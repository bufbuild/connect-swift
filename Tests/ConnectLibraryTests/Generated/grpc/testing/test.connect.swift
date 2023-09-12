// Code generated by protoc-gen-connect-swift. DO NOT EDIT.
//
// Source: grpc/testing/test.proto
//

import Connect
import Foundation
import SwiftProtobuf

/// A simple service to test the various types of RPCs and experiment with
/// performance with various types of payload.
internal protocol Grpc_Testing_TestServiceClientInterface {

    /// One empty request followed by one empty response.
    @discardableResult
    func `emptyCall`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers, completion: @escaping (ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty>) -> Void) -> Connect.Cancelable

    /// One empty request followed by one empty response.
    @available(iOS 13, *)
    func `emptyCall`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers) async -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty>

    /// One request followed by one response.
    @discardableResult
    func `unaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers, completion: @escaping (ResponseMessage<Grpc_Testing_SimpleResponse>) -> Void) -> Connect.Cancelable

    /// One request followed by one response.
    @available(iOS 13, *)
    func `unaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers) async -> ResponseMessage<Grpc_Testing_SimpleResponse>

    /// One request followed by one response. This RPC always fails.
    @discardableResult
    func `failUnaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers, completion: @escaping (ResponseMessage<Grpc_Testing_SimpleResponse>) -> Void) -> Connect.Cancelable

    /// One request followed by one response. This RPC always fails.
    @available(iOS 13, *)
    func `failUnaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers) async -> ResponseMessage<Grpc_Testing_SimpleResponse>

    /// One request followed by one response. Response has cache control
    /// headers set such that a caching HTTP proxy (such as GFE) can
    /// satisfy subsequent requests.
    @discardableResult
    func `cacheableUnaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers, completion: @escaping (ResponseMessage<Grpc_Testing_SimpleResponse>) -> Void) -> Connect.Cancelable

    /// One request followed by one response. Response has cache control
    /// headers set such that a caching HTTP proxy (such as GFE) can
    /// satisfy subsequent requests.
    @available(iOS 13, *)
    func `cacheableUnaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers) async -> ResponseMessage<Grpc_Testing_SimpleResponse>

    /// One request followed by a sequence of responses (streamed download).
    /// The server returns the payload with client desired type and sizes.
    func `streamingOutputCall`(headers: Connect.Headers, onResult: @escaping (Connect.StreamResult<Grpc_Testing_StreamingOutputCallResponse>) -> Void) -> any Connect.ServerOnlyStreamInterface<Grpc_Testing_StreamingOutputCallRequest>

    /// One request followed by a sequence of responses (streamed download).
    /// The server returns the payload with client desired type and sizes.
    @available(iOS 13, *)
    func `streamingOutputCall`(headers: Connect.Headers) -> any Connect.ServerOnlyAsyncStreamInterface<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse>

    /// One request followed by a sequence of responses (streamed download).
    /// The server returns the payload with client desired type and sizes.
    /// This RPC always responds with an error status.
    func `failStreamingOutputCall`(headers: Connect.Headers, onResult: @escaping (Connect.StreamResult<Grpc_Testing_StreamingOutputCallResponse>) -> Void) -> any Connect.ServerOnlyStreamInterface<Grpc_Testing_StreamingOutputCallRequest>

    /// One request followed by a sequence of responses (streamed download).
    /// The server returns the payload with client desired type and sizes.
    /// This RPC always responds with an error status.
    @available(iOS 13, *)
    func `failStreamingOutputCall`(headers: Connect.Headers) -> any Connect.ServerOnlyAsyncStreamInterface<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse>

    /// A sequence of requests followed by one response (streamed upload).
    /// The server returns the aggregated size of client payload as the result.
    func `streamingInputCall`(headers: Connect.Headers, onResult: @escaping (Connect.StreamResult<Grpc_Testing_StreamingInputCallResponse>) -> Void) -> any Connect.ClientOnlyStreamInterface<Grpc_Testing_StreamingInputCallRequest>

    /// A sequence of requests followed by one response (streamed upload).
    /// The server returns the aggregated size of client payload as the result.
    @available(iOS 13, *)
    func `streamingInputCall`(headers: Connect.Headers) -> any Connect.ClientOnlyAsyncStreamInterface<Grpc_Testing_StreamingInputCallRequest, Grpc_Testing_StreamingInputCallResponse>

    /// A sequence of requests with each request served by the server immediately.
    /// As one request could lead to multiple responses, this interface
    /// demonstrates the idea of full duplexing.
    func `fullDuplexCall`(headers: Connect.Headers, onResult: @escaping (Connect.StreamResult<Grpc_Testing_StreamingOutputCallResponse>) -> Void) -> any Connect.BidirectionalStreamInterface<Grpc_Testing_StreamingOutputCallRequest>

    /// A sequence of requests with each request served by the server immediately.
    /// As one request could lead to multiple responses, this interface
    /// demonstrates the idea of full duplexing.
    @available(iOS 13, *)
    func `fullDuplexCall`(headers: Connect.Headers) -> any Connect.BidirectionalAsyncStreamInterface<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse>

    /// A sequence of requests followed by a sequence of responses.
    /// The server buffers all the client requests and then serves them in order. A
    /// stream of responses are returned to the client when the server starts with
    /// first request.
    func `halfDuplexCall`(headers: Connect.Headers, onResult: @escaping (Connect.StreamResult<Grpc_Testing_StreamingOutputCallResponse>) -> Void) -> any Connect.BidirectionalStreamInterface<Grpc_Testing_StreamingOutputCallRequest>

    /// A sequence of requests followed by a sequence of responses.
    /// The server buffers all the client requests and then serves them in order. A
    /// stream of responses are returned to the client when the server starts with
    /// first request.
    @available(iOS 13, *)
    func `halfDuplexCall`(headers: Connect.Headers) -> any Connect.BidirectionalAsyncStreamInterface<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse>

    /// The test server will not implement this method. It will be used
    /// to test the behavior when clients call unimplemented methods.
    @discardableResult
    func `unimplementedCall`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers, completion: @escaping (ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty>) -> Void) -> Connect.Cancelable

    /// The test server will not implement this method. It will be used
    /// to test the behavior when clients call unimplemented methods.
    @available(iOS 13, *)
    func `unimplementedCall`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers) async -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty>

    /// The test server will not implement this method. It will be used
    /// to test the behavior when clients call unimplemented streaming output methods.
    func `unimplementedStreamingOutputCall`(headers: Connect.Headers, onResult: @escaping (Connect.StreamResult<SwiftProtobuf.Google_Protobuf_Empty>) -> Void) -> any Connect.ServerOnlyStreamInterface<SwiftProtobuf.Google_Protobuf_Empty>

    /// The test server will not implement this method. It will be used
    /// to test the behavior when clients call unimplemented streaming output methods.
    @available(iOS 13, *)
    func `unimplementedStreamingOutputCall`(headers: Connect.Headers) -> any Connect.ServerOnlyAsyncStreamInterface<SwiftProtobuf.Google_Protobuf_Empty, SwiftProtobuf.Google_Protobuf_Empty>
}

/// Concrete implementation of `Grpc_Testing_TestServiceClientInterface`.
internal final class Grpc_Testing_TestServiceClient: Grpc_Testing_TestServiceClientInterface {
    private let client: Connect.ProtocolClientInterface

    internal init(client: Connect.ProtocolClientInterface) {
        self.client = client
    }

    @discardableResult
    internal func `emptyCall`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "/grpc.testing.TestService/EmptyCall", request: request, headers: headers, completion: completion)
    }

    @available(iOS 13, *)
    internal func `emptyCall`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers = [:]) async -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty> {
        return await self.client.unary(path: "/grpc.testing.TestService/EmptyCall", request: request, headers: headers)
    }

    @discardableResult
    internal func `unaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<Grpc_Testing_SimpleResponse>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "/grpc.testing.TestService/UnaryCall", request: request, headers: headers, completion: completion)
    }

    @available(iOS 13, *)
    internal func `unaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_SimpleResponse> {
        return await self.client.unary(path: "/grpc.testing.TestService/UnaryCall", request: request, headers: headers)
    }

    @discardableResult
    internal func `failUnaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<Grpc_Testing_SimpleResponse>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "/grpc.testing.TestService/FailUnaryCall", request: request, headers: headers, completion: completion)
    }

    @available(iOS 13, *)
    internal func `failUnaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_SimpleResponse> {
        return await self.client.unary(path: "/grpc.testing.TestService/FailUnaryCall", request: request, headers: headers)
    }

    @discardableResult
    internal func `cacheableUnaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<Grpc_Testing_SimpleResponse>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "/grpc.testing.TestService/CacheableUnaryCall", request: request, headers: headers, completion: completion)
    }

    @available(iOS 13, *)
    internal func `cacheableUnaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_SimpleResponse> {
        return await self.client.unary(path: "/grpc.testing.TestService/CacheableUnaryCall", request: request, headers: headers)
    }

    internal func `streamingOutputCall`(headers: Connect.Headers = [:], onResult: @escaping (Connect.StreamResult<Grpc_Testing_StreamingOutputCallResponse>) -> Void) -> any Connect.ServerOnlyStreamInterface<Grpc_Testing_StreamingOutputCallRequest> {
        return self.client.serverOnlyStream(path: "/grpc.testing.TestService/StreamingOutputCall", headers: headers, onResult: onResult)
    }

    @available(iOS 13, *)
    internal func `streamingOutputCall`(headers: Connect.Headers = [:]) -> any Connect.ServerOnlyAsyncStreamInterface<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse> {
        return self.client.serverOnlyStream(path: "/grpc.testing.TestService/StreamingOutputCall", headers: headers)
    }

    internal func `failStreamingOutputCall`(headers: Connect.Headers = [:], onResult: @escaping (Connect.StreamResult<Grpc_Testing_StreamingOutputCallResponse>) -> Void) -> any Connect.ServerOnlyStreamInterface<Grpc_Testing_StreamingOutputCallRequest> {
        return self.client.serverOnlyStream(path: "/grpc.testing.TestService/FailStreamingOutputCall", headers: headers, onResult: onResult)
    }

    @available(iOS 13, *)
    internal func `failStreamingOutputCall`(headers: Connect.Headers = [:]) -> any Connect.ServerOnlyAsyncStreamInterface<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse> {
        return self.client.serverOnlyStream(path: "/grpc.testing.TestService/FailStreamingOutputCall", headers: headers)
    }

    internal func `streamingInputCall`(headers: Connect.Headers = [:], onResult: @escaping (Connect.StreamResult<Grpc_Testing_StreamingInputCallResponse>) -> Void) -> any Connect.ClientOnlyStreamInterface<Grpc_Testing_StreamingInputCallRequest> {
        return self.client.clientOnlyStream(path: "/grpc.testing.TestService/StreamingInputCall", headers: headers, onResult: onResult)
    }

    @available(iOS 13, *)
    internal func `streamingInputCall`(headers: Connect.Headers = [:]) -> any Connect.ClientOnlyAsyncStreamInterface<Grpc_Testing_StreamingInputCallRequest, Grpc_Testing_StreamingInputCallResponse> {
        return self.client.clientOnlyStream(path: "/grpc.testing.TestService/StreamingInputCall", headers: headers)
    }

    internal func `fullDuplexCall`(headers: Connect.Headers = [:], onResult: @escaping (Connect.StreamResult<Grpc_Testing_StreamingOutputCallResponse>) -> Void) -> any Connect.BidirectionalStreamInterface<Grpc_Testing_StreamingOutputCallRequest> {
        return self.client.bidirectionalStream(path: "/grpc.testing.TestService/FullDuplexCall", headers: headers, onResult: onResult)
    }

    @available(iOS 13, *)
    internal func `fullDuplexCall`(headers: Connect.Headers = [:]) -> any Connect.BidirectionalAsyncStreamInterface<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse> {
        return self.client.bidirectionalStream(path: "/grpc.testing.TestService/FullDuplexCall", headers: headers)
    }

    internal func `halfDuplexCall`(headers: Connect.Headers = [:], onResult: @escaping (Connect.StreamResult<Grpc_Testing_StreamingOutputCallResponse>) -> Void) -> any Connect.BidirectionalStreamInterface<Grpc_Testing_StreamingOutputCallRequest> {
        return self.client.bidirectionalStream(path: "/grpc.testing.TestService/HalfDuplexCall", headers: headers, onResult: onResult)
    }

    @available(iOS 13, *)
    internal func `halfDuplexCall`(headers: Connect.Headers = [:]) -> any Connect.BidirectionalAsyncStreamInterface<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse> {
        return self.client.bidirectionalStream(path: "/grpc.testing.TestService/HalfDuplexCall", headers: headers)
    }

    @discardableResult
    internal func `unimplementedCall`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "/grpc.testing.TestService/UnimplementedCall", request: request, headers: headers, completion: completion)
    }

    @available(iOS 13, *)
    internal func `unimplementedCall`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers = [:]) async -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty> {
        return await self.client.unary(path: "/grpc.testing.TestService/UnimplementedCall", request: request, headers: headers)
    }

    internal func `unimplementedStreamingOutputCall`(headers: Connect.Headers = [:], onResult: @escaping (Connect.StreamResult<SwiftProtobuf.Google_Protobuf_Empty>) -> Void) -> any Connect.ServerOnlyStreamInterface<SwiftProtobuf.Google_Protobuf_Empty> {
        return self.client.serverOnlyStream(path: "/grpc.testing.TestService/UnimplementedStreamingOutputCall", headers: headers, onResult: onResult)
    }

    @available(iOS 13, *)
    internal func `unimplementedStreamingOutputCall`(headers: Connect.Headers = [:]) -> any Connect.ServerOnlyAsyncStreamInterface<SwiftProtobuf.Google_Protobuf_Empty, SwiftProtobuf.Google_Protobuf_Empty> {
        return self.client.serverOnlyStream(path: "/grpc.testing.TestService/UnimplementedStreamingOutputCall", headers: headers)
    }

    internal enum Metadata {
        internal enum Methods {
            internal static let emptyCall = Connect.MethodSpec(name: "EmptyCall", service: "grpc.testing.TestService", type: .unary)
            internal static let unaryCall = Connect.MethodSpec(name: "UnaryCall", service: "grpc.testing.TestService", type: .unary)
            internal static let failUnaryCall = Connect.MethodSpec(name: "FailUnaryCall", service: "grpc.testing.TestService", type: .unary)
            internal static let cacheableUnaryCall = Connect.MethodSpec(name: "CacheableUnaryCall", service: "grpc.testing.TestService", type: .unary)
            internal static let streamingOutputCall = Connect.MethodSpec(name: "StreamingOutputCall", service: "grpc.testing.TestService", type: .serverStream)
            internal static let failStreamingOutputCall = Connect.MethodSpec(name: "FailStreamingOutputCall", service: "grpc.testing.TestService", type: .serverStream)
            internal static let streamingInputCall = Connect.MethodSpec(name: "StreamingInputCall", service: "grpc.testing.TestService", type: .clientStream)
            internal static let fullDuplexCall = Connect.MethodSpec(name: "FullDuplexCall", service: "grpc.testing.TestService", type: .bidirectionalStream)
            internal static let halfDuplexCall = Connect.MethodSpec(name: "HalfDuplexCall", service: "grpc.testing.TestService", type: .bidirectionalStream)
            internal static let unimplementedCall = Connect.MethodSpec(name: "UnimplementedCall", service: "grpc.testing.TestService", type: .unary)
            internal static let unimplementedStreamingOutputCall = Connect.MethodSpec(name: "UnimplementedStreamingOutputCall", service: "grpc.testing.TestService", type: .serverStream)
        }
    }
}

/// A simple service NOT implemented at servers so clients can test for
/// that case.
internal protocol Grpc_Testing_UnimplementedServiceClientInterface {

    /// A call that no server should implement
    @discardableResult
    func `unimplementedCall`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers, completion: @escaping (ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty>) -> Void) -> Connect.Cancelable

    /// A call that no server should implement
    @available(iOS 13, *)
    func `unimplementedCall`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers) async -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty>

    /// A call that no server should implement
    func `unimplementedStreamingOutputCall`(headers: Connect.Headers, onResult: @escaping (Connect.StreamResult<SwiftProtobuf.Google_Protobuf_Empty>) -> Void) -> any Connect.ServerOnlyStreamInterface<SwiftProtobuf.Google_Protobuf_Empty>

    /// A call that no server should implement
    @available(iOS 13, *)
    func `unimplementedStreamingOutputCall`(headers: Connect.Headers) -> any Connect.ServerOnlyAsyncStreamInterface<SwiftProtobuf.Google_Protobuf_Empty, SwiftProtobuf.Google_Protobuf_Empty>
}

/// Concrete implementation of `Grpc_Testing_UnimplementedServiceClientInterface`.
internal final class Grpc_Testing_UnimplementedServiceClient: Grpc_Testing_UnimplementedServiceClientInterface {
    private let client: Connect.ProtocolClientInterface

    internal init(client: Connect.ProtocolClientInterface) {
        self.client = client
    }

    @discardableResult
    internal func `unimplementedCall`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "/grpc.testing.UnimplementedService/UnimplementedCall", request: request, headers: headers, completion: completion)
    }

    @available(iOS 13, *)
    internal func `unimplementedCall`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers = [:]) async -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty> {
        return await self.client.unary(path: "/grpc.testing.UnimplementedService/UnimplementedCall", request: request, headers: headers)
    }

    internal func `unimplementedStreamingOutputCall`(headers: Connect.Headers = [:], onResult: @escaping (Connect.StreamResult<SwiftProtobuf.Google_Protobuf_Empty>) -> Void) -> any Connect.ServerOnlyStreamInterface<SwiftProtobuf.Google_Protobuf_Empty> {
        return self.client.serverOnlyStream(path: "/grpc.testing.UnimplementedService/UnimplementedStreamingOutputCall", headers: headers, onResult: onResult)
    }

    @available(iOS 13, *)
    internal func `unimplementedStreamingOutputCall`(headers: Connect.Headers = [:]) -> any Connect.ServerOnlyAsyncStreamInterface<SwiftProtobuf.Google_Protobuf_Empty, SwiftProtobuf.Google_Protobuf_Empty> {
        return self.client.serverOnlyStream(path: "/grpc.testing.UnimplementedService/UnimplementedStreamingOutputCall", headers: headers)
    }

    internal enum Metadata {
        internal enum Methods {
            internal static let unimplementedCall = Connect.MethodSpec(name: "UnimplementedCall", service: "grpc.testing.UnimplementedService", type: .unary)
            internal static let unimplementedStreamingOutputCall = Connect.MethodSpec(name: "UnimplementedStreamingOutputCall", service: "grpc.testing.UnimplementedService", type: .serverStream)
        }
    }
}

/// A service used to control reconnect server.
internal protocol Grpc_Testing_ReconnectServiceClientInterface {

    @discardableResult
    func `start`(request: Grpc_Testing_ReconnectParams, headers: Connect.Headers, completion: @escaping (ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty>) -> Void) -> Connect.Cancelable

    @available(iOS 13, *)
    func `start`(request: Grpc_Testing_ReconnectParams, headers: Connect.Headers) async -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty>

    @discardableResult
    func `stop`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers, completion: @escaping (ResponseMessage<Grpc_Testing_ReconnectInfo>) -> Void) -> Connect.Cancelable

    @available(iOS 13, *)
    func `stop`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers) async -> ResponseMessage<Grpc_Testing_ReconnectInfo>
}

/// Concrete implementation of `Grpc_Testing_ReconnectServiceClientInterface`.
internal final class Grpc_Testing_ReconnectServiceClient: Grpc_Testing_ReconnectServiceClientInterface {
    private let client: Connect.ProtocolClientInterface

    internal init(client: Connect.ProtocolClientInterface) {
        self.client = client
    }

    @discardableResult
    internal func `start`(request: Grpc_Testing_ReconnectParams, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "/grpc.testing.ReconnectService/Start", request: request, headers: headers, completion: completion)
    }

    @available(iOS 13, *)
    internal func `start`(request: Grpc_Testing_ReconnectParams, headers: Connect.Headers = [:]) async -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty> {
        return await self.client.unary(path: "/grpc.testing.ReconnectService/Start", request: request, headers: headers)
    }

    @discardableResult
    internal func `stop`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<Grpc_Testing_ReconnectInfo>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "/grpc.testing.ReconnectService/Stop", request: request, headers: headers, completion: completion)
    }

    @available(iOS 13, *)
    internal func `stop`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_ReconnectInfo> {
        return await self.client.unary(path: "/grpc.testing.ReconnectService/Stop", request: request, headers: headers)
    }

    internal enum Metadata {
        internal enum Methods {
            internal static let start = Connect.MethodSpec(name: "Start", service: "grpc.testing.ReconnectService", type: .unary)
            internal static let stop = Connect.MethodSpec(name: "Stop", service: "grpc.testing.ReconnectService", type: .unary)
        }
    }
}

/// A service used to obtain stats for verifying LB behavior.
internal protocol Grpc_Testing_LoadBalancerStatsServiceClientInterface {

    /// Gets the backend distribution for RPCs sent by a test client.
    @discardableResult
    func `getClientStats`(request: Grpc_Testing_LoadBalancerStatsRequest, headers: Connect.Headers, completion: @escaping (ResponseMessage<Grpc_Testing_LoadBalancerStatsResponse>) -> Void) -> Connect.Cancelable

    /// Gets the backend distribution for RPCs sent by a test client.
    @available(iOS 13, *)
    func `getClientStats`(request: Grpc_Testing_LoadBalancerStatsRequest, headers: Connect.Headers) async -> ResponseMessage<Grpc_Testing_LoadBalancerStatsResponse>

    /// Gets the accumulated stats for RPCs sent by a test client.
    @discardableResult
    func `getClientAccumulatedStats`(request: Grpc_Testing_LoadBalancerAccumulatedStatsRequest, headers: Connect.Headers, completion: @escaping (ResponseMessage<Grpc_Testing_LoadBalancerAccumulatedStatsResponse>) -> Void) -> Connect.Cancelable

    /// Gets the accumulated stats for RPCs sent by a test client.
    @available(iOS 13, *)
    func `getClientAccumulatedStats`(request: Grpc_Testing_LoadBalancerAccumulatedStatsRequest, headers: Connect.Headers) async -> ResponseMessage<Grpc_Testing_LoadBalancerAccumulatedStatsResponse>
}

/// Concrete implementation of `Grpc_Testing_LoadBalancerStatsServiceClientInterface`.
internal final class Grpc_Testing_LoadBalancerStatsServiceClient: Grpc_Testing_LoadBalancerStatsServiceClientInterface {
    private let client: Connect.ProtocolClientInterface

    internal init(client: Connect.ProtocolClientInterface) {
        self.client = client
    }

    @discardableResult
    internal func `getClientStats`(request: Grpc_Testing_LoadBalancerStatsRequest, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<Grpc_Testing_LoadBalancerStatsResponse>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "/grpc.testing.LoadBalancerStatsService/GetClientStats", request: request, headers: headers, completion: completion)
    }

    @available(iOS 13, *)
    internal func `getClientStats`(request: Grpc_Testing_LoadBalancerStatsRequest, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_LoadBalancerStatsResponse> {
        return await self.client.unary(path: "/grpc.testing.LoadBalancerStatsService/GetClientStats", request: request, headers: headers)
    }

    @discardableResult
    internal func `getClientAccumulatedStats`(request: Grpc_Testing_LoadBalancerAccumulatedStatsRequest, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<Grpc_Testing_LoadBalancerAccumulatedStatsResponse>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "/grpc.testing.LoadBalancerStatsService/GetClientAccumulatedStats", request: request, headers: headers, completion: completion)
    }

    @available(iOS 13, *)
    internal func `getClientAccumulatedStats`(request: Grpc_Testing_LoadBalancerAccumulatedStatsRequest, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_LoadBalancerAccumulatedStatsResponse> {
        return await self.client.unary(path: "/grpc.testing.LoadBalancerStatsService/GetClientAccumulatedStats", request: request, headers: headers)
    }

    internal enum Metadata {
        internal enum Methods {
            internal static let getClientStats = Connect.MethodSpec(name: "GetClientStats", service: "grpc.testing.LoadBalancerStatsService", type: .unary)
            internal static let getClientAccumulatedStats = Connect.MethodSpec(name: "GetClientAccumulatedStats", service: "grpc.testing.LoadBalancerStatsService", type: .unary)
        }
    }
}

/// A service to remotely control health status of an xDS test server.
internal protocol Grpc_Testing_XdsUpdateHealthServiceClientInterface {

    @discardableResult
    func `setServing`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers, completion: @escaping (ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty>) -> Void) -> Connect.Cancelable

    @available(iOS 13, *)
    func `setServing`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers) async -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty>

    @discardableResult
    func `setNotServing`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers, completion: @escaping (ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty>) -> Void) -> Connect.Cancelable

    @available(iOS 13, *)
    func `setNotServing`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers) async -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty>
}

/// Concrete implementation of `Grpc_Testing_XdsUpdateHealthServiceClientInterface`.
internal final class Grpc_Testing_XdsUpdateHealthServiceClient: Grpc_Testing_XdsUpdateHealthServiceClientInterface {
    private let client: Connect.ProtocolClientInterface

    internal init(client: Connect.ProtocolClientInterface) {
        self.client = client
    }

    @discardableResult
    internal func `setServing`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "/grpc.testing.XdsUpdateHealthService/SetServing", request: request, headers: headers, completion: completion)
    }

    @available(iOS 13, *)
    internal func `setServing`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers = [:]) async -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty> {
        return await self.client.unary(path: "/grpc.testing.XdsUpdateHealthService/SetServing", request: request, headers: headers)
    }

    @discardableResult
    internal func `setNotServing`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "/grpc.testing.XdsUpdateHealthService/SetNotServing", request: request, headers: headers, completion: completion)
    }

    @available(iOS 13, *)
    internal func `setNotServing`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers = [:]) async -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty> {
        return await self.client.unary(path: "/grpc.testing.XdsUpdateHealthService/SetNotServing", request: request, headers: headers)
    }

    internal enum Metadata {
        internal enum Methods {
            internal static let setServing = Connect.MethodSpec(name: "SetServing", service: "grpc.testing.XdsUpdateHealthService", type: .unary)
            internal static let setNotServing = Connect.MethodSpec(name: "SetNotServing", service: "grpc.testing.XdsUpdateHealthService", type: .unary)
        }
    }
}

/// A service to dynamically update the configuration of an xDS test client.
internal protocol Grpc_Testing_XdsUpdateClientConfigureServiceClientInterface {

    /// Update the tes client's configuration.
    @discardableResult
    func `configure`(request: Grpc_Testing_ClientConfigureRequest, headers: Connect.Headers, completion: @escaping (ResponseMessage<Grpc_Testing_ClientConfigureResponse>) -> Void) -> Connect.Cancelable

    /// Update the tes client's configuration.
    @available(iOS 13, *)
    func `configure`(request: Grpc_Testing_ClientConfigureRequest, headers: Connect.Headers) async -> ResponseMessage<Grpc_Testing_ClientConfigureResponse>
}

/// Concrete implementation of `Grpc_Testing_XdsUpdateClientConfigureServiceClientInterface`.
internal final class Grpc_Testing_XdsUpdateClientConfigureServiceClient: Grpc_Testing_XdsUpdateClientConfigureServiceClientInterface {
    private let client: Connect.ProtocolClientInterface

    internal init(client: Connect.ProtocolClientInterface) {
        self.client = client
    }

    @discardableResult
    internal func `configure`(request: Grpc_Testing_ClientConfigureRequest, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<Grpc_Testing_ClientConfigureResponse>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "/grpc.testing.XdsUpdateClientConfigureService/Configure", request: request, headers: headers, completion: completion)
    }

    @available(iOS 13, *)
    internal func `configure`(request: Grpc_Testing_ClientConfigureRequest, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_ClientConfigureResponse> {
        return await self.client.unary(path: "/grpc.testing.XdsUpdateClientConfigureService/Configure", request: request, headers: headers)
    }

    internal enum Metadata {
        internal enum Methods {
            internal static let configure = Connect.MethodSpec(name: "Configure", service: "grpc.testing.XdsUpdateClientConfigureService", type: .unary)
        }
    }
}
