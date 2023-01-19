// Code generated by protoc-gen-connect-swift. DO NOT EDIT.
//
// Source: eliza.proto
//

import Connect
import Foundation
import SwiftProtobuf

/// ElizaService provides a way to talk to the ELIZA, which is a port of
/// the DOCTOR script for Joseph Weizenbaum's original ELIZA program.
/// Created in the mid-1960s at the MIT Artificial Intelligence Laboratory,
/// ELIZA demonstrates the superficiality of human-computer communication.
/// DOCTOR simulates a psychotherapist, and is commonly found as an Easter
/// egg in emacs distributions.
internal protocol Buf_Connect_Demo_Eliza_V1_ElizaServiceClientInterface {

    /// Say is a unary request demo. This method should allow for a one sentence
    /// response given a one sentence request.
    func `say`(request: Buf_Connect_Demo_Eliza_V1_SayRequest, headers: Connect.Headers) async -> ResponseMessage<Buf_Connect_Demo_Eliza_V1_SayResponse>

    /// Converse is a bi-directional streaming request demo. This method should allow for
    /// many requests and many responses.
    func `converse`(headers: Connect.Headers) -> any Connect.BidirectionalAsyncStreamInterface<Buf_Connect_Demo_Eliza_V1_ConverseRequest, Buf_Connect_Demo_Eliza_V1_ConverseResponse>

    /// Introduce is a server-streaming request demo.  This method allows for a single request that will return a series
    /// of responses
    func `introduce`(headers: Connect.Headers) -> any Connect.ServerOnlyAsyncStreamInterface<Buf_Connect_Demo_Eliza_V1_IntroduceRequest, Buf_Connect_Demo_Eliza_V1_IntroduceResponse>
}

/// Concrete implementation of `Buf_Connect_Demo_Eliza_V1_ElizaServiceClientInterface`.
internal final class Buf_Connect_Demo_Eliza_V1_ElizaServiceClient: Buf_Connect_Demo_Eliza_V1_ElizaServiceClientInterface {
    private let client: Connect.ProtocolClientInterface

    internal init(client: Connect.ProtocolClientInterface) {
        self.client = client
    }

    internal func `say`(request: Buf_Connect_Demo_Eliza_V1_SayRequest, headers: Connect.Headers = [:]) async -> ResponseMessage<Buf_Connect_Demo_Eliza_V1_SayResponse> {
        return await self.client.unary(path: "buf.connect.demo.eliza.v1.ElizaService/Say", request: request, headers: headers)
    }

    internal func `converse`(headers: Connect.Headers = [:]) -> any Connect.BidirectionalAsyncStreamInterface<Buf_Connect_Demo_Eliza_V1_ConverseRequest, Buf_Connect_Demo_Eliza_V1_ConverseResponse> {
        return self.client.bidirectionalStream(path: "buf.connect.demo.eliza.v1.ElizaService/Converse", headers: headers)
    }

    internal func `introduce`(headers: Connect.Headers = [:]) -> any Connect.ServerOnlyAsyncStreamInterface<Buf_Connect_Demo_Eliza_V1_IntroduceRequest, Buf_Connect_Demo_Eliza_V1_IntroduceResponse> {
        return self.client.serverOnlyStream(path: "buf.connect.demo.eliza.v1.ElizaService/Introduce", headers: headers)
    }

    internal enum Metadata {
        internal enum Methods {
            internal static let say = Connect.MethodSpec(name: "Say", service: "buf.connect.demo.eliza.v1.ElizaService", type: .unary)
            internal static let converse = Connect.MethodSpec(name: "Converse", service: "buf.connect.demo.eliza.v1.ElizaService", type: .bidirectionalStream)
            internal static let introduce = Connect.MethodSpec(name: "Introduce", service: "buf.connect.demo.eliza.v1.ElizaService", type: .serverStream)
        }
    }
}
