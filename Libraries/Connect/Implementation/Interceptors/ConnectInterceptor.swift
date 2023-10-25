// Copyright 2022-2023 The Connect Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation

/// Implementation of the Connect protocol as an interceptor.
/// https://connectrpc.com/docs/protocol
final class ConnectInterceptor: Interceptor {
    private let config: ProtocolClientConfig
    private let streamResponseHeaders = Locked<Headers?>(nil)

    private static let protocolVersion = "1"

    init(config: ProtocolClientConfig) {
        self.config = config
    }
}

extension ConnectInterceptor: UnaryInterceptor {
    func handleUnaryRawRequest(
        _ request: HTTPRequest<Data?>,
        proceed: @escaping (Result<HTTPRequest<Data?>, ConnectError>) -> Void
    ) {
        var headers = request.headers
        headers[HeaderConstants.connectProtocolVersion] = [Self.protocolVersion]
        headers[HeaderConstants.acceptEncoding] = self.config.acceptCompressionPoolNames()

        let requestBody = request.message ?? Data()
        let finalRequestBody: Data
        if let compression = self.config.requestCompression,
           compression.shouldCompress(requestBody)
        {
            do {
                finalRequestBody = try compression.pool.compress(data: requestBody)
                headers[HeaderConstants.contentEncoding] = [compression.pool.name()]
            } catch {
                finalRequestBody = requestBody
            }
        } else {
            finalRequestBody = requestBody
        }

        proceed(.success(HTTPRequest(
            url: request.url,
            headers: headers,
            message: finalRequestBody,
            trailers: nil
        )))
    }

    func handleUnaryRawResponse(
        _ response: HTTPResponse,
        proceed: @escaping (HTTPResponse) -> Void
    ) {
        let trailerPrefix = "trailer-"
        let headers = response.headers.filter { header in
            return header.key != HeaderConstants.contentEncoding
            && !header.key.hasPrefix(trailerPrefix)
        }
        let trailers = response.headers
            .filter { $0.key.hasPrefix(trailerPrefix) }
            .reduce(into: Trailers(), { trailers, current in
                trailers[
                    String(current.key.dropFirst(trailerPrefix.count))
                ] = current.value
            })

        if let encoding = response.headers[HeaderConstants.contentEncoding]?.first,
           let compressionPool = self.config.responseCompressionPool(forName: encoding),
           let message = response.message.flatMap({ try? compressionPool.decompress(data: $0) })
        {
            proceed(HTTPResponse(
                code: response.code,
                headers: headers,
                message: message,
                trailers: trailers,
                error: response.error,
                tracingInfo: response.tracingInfo
            ))
        } else {
            proceed(HTTPResponse(
                code: response.code,
                headers: headers,
                message: response.message,
                trailers: trailers,
                error: response.error,
                tracingInfo: response.tracingInfo
            ))
        }
    }
}

extension ConnectInterceptor: StreamInterceptor {
    func handleStreamStart(
        _ request: HTTPRequest<Void>,
        proceed: @escaping (Result<HTTPRequest<Void>, ConnectError>) -> Void
    ) {
        var headers = request.headers
        headers[HeaderConstants.connectProtocolVersion] = [Self.protocolVersion]
        headers[HeaderConstants.connectStreamingContentEncoding] = self.config
            .requestCompression.map { [$0.pool.name()] }
        headers[HeaderConstants.connectStreamingAcceptEncoding] = self.config
            .acceptCompressionPoolNames()
        proceed(.success(HTTPRequest(
            url: request.url,
            headers: headers,
            message: request.message,
            trailers: nil
        )))
    }

    func handleStreamRawInput(_ input: Data, proceed: @escaping (Data) -> Void) {
        proceed(Envelope.packMessage(input, using: self.config.requestCompression))
    }

    func handleStreamRawResult(
        _ result: StreamResult<Data>,
        proceed: @escaping (StreamResult<Data>) -> Void
    ) {
        switch result {
        case .headers(let headers):
            self.streamResponseHeaders.value = headers
            proceed(result)

        case .message(let data):
            do {
                let responseCompressionPool = self.streamResponseHeaders.value?[
                    HeaderConstants.connectStreamingContentEncoding
                ]?.first.flatMap { self.config.responseCompressionPool(forName: $0) }
                let (headerByte, message) = try Envelope.unpackMessage(
                    data, compressionPool: responseCompressionPool
                )
                let isEndStream = 0b00000010 & headerByte != 0
                if isEndStream {
                    // Expect a valid Connect end stream response, which can simply be {}.
                    // https://connectrpc.com/docs/protocol#error-end-stream
                    let response = try JSONDecoder().decode(
                        ConnectEndStreamResponse.self, from: message
                    )
                    proceed(.complete(
                        code: response.error?.code ?? .ok,
                        error: response.error,
                        trailers: response.metadata
                    ))
                } else {
                    proceed(.message(message))
                }
            } catch let error {
                // TODO: Close the stream here?
                proceed(.complete(code: .unknown, error: error, trailers: nil))
            }

        case .complete(let code, let error, let trailers):
            if code != .ok && error == nil {
                proceed(.complete(
                    code: code,
                    error: ConnectError.from(
                        code: code,
                        headers: self.streamResponseHeaders.value ?? [:],
                        source: nil
                    ),
                    trailers: trailers
                ))
            } else {
                proceed(result)
            }
        }
    }
}
