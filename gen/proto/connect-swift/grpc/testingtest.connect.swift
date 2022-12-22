// Code generated by protoc-gen-connect-swift. DO NOT EDIT.
//
// Source: grpc/testing/test.proto
//

import Connect
import Foundation
import SwiftProtobuf

/// A simple service to test the various types of RPCs and experiment with
/// performance with various types of payload.
public protocol Grpc_Testing_TestServiceClientInterface {

    /// One empty request followed by one empty response.
    @discardableResult
    func `emptyCall`(request: Grpc_Testing_Empty, headers: Connect.Headers, completion: @escaping (ResponseMessage<Grpc_Testing_Empty>) -> Void) -> Connect.Cancelable

    /// One request followed by one response.
    @discardableResult
    func `unaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers, completion: @escaping (ResponseMessage<Grpc_Testing_SimpleResponse>) -> Void) -> Connect.Cancelable

    /// One request followed by one response. This RPC always fails.
    @discardableResult
    func `failUnaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers, completion: @escaping (ResponseMessage<Grpc_Testing_SimpleResponse>) -> Void) -> Connect.Cancelable

    /// One request followed by one response. Response has cache control
    /// headers set such that a caching HTTP proxy (such as GFE) can
    /// satisfy subsequent requests.
    @discardableResult
    func `cacheableUnaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers, completion: @escaping (ResponseMessage<Grpc_Testing_SimpleResponse>) -> Void) -> Connect.Cancelable

    /// One request followed by a sequence of responses (streamed download).
    /// The server returns the payload with client desired type and sizes.
    func `streamingOutputCall`(headers: Connect.Headers, onResult: @escaping (Connect.StreamResult<Grpc_Testing_StreamingOutputCallResponse>) -> Void) -> any Connect.ServerOnlyStreamInterface<Grpc_Testing_StreamingOutputCallRequest>

    /// One request followed by a sequence of responses (streamed download). This RPC always fails.
    func `failStreamingOutputCall`(headers: Connect.Headers, onResult: @escaping (Connect.StreamResult<Grpc_Testing_StreamingOutputCallResponse>) -> Void) -> any Connect.ServerOnlyStreamInterface<Grpc_Testing_StreamingOutputCallRequest>

    /// A sequence of requests followed by one response (streamed upload).
    /// The server returns the aggregated size of client payload as the result.
    func `streamingInputCall`(headers: Connect.Headers, onResult: @escaping (Connect.StreamResult<Grpc_Testing_StreamingInputCallResponse>) -> Void) -> any Connect.ClientOnlyStreamInterface<Grpc_Testing_StreamingInputCallRequest>

    /// A sequence of requests with each request served by the server immediately.
    /// As one request could lead to multiple responses, this interface
    /// demonstrates the idea of full duplexing.
    func `fullDuplexCall`(headers: Connect.Headers, onResult: @escaping (Connect.StreamResult<Grpc_Testing_StreamingOutputCallResponse>) -> Void) -> any Connect.BidirectionalStreamInterface<Grpc_Testing_StreamingOutputCallRequest>

    /// A sequence of requests followed by a sequence of responses.
    /// The server buffers all the client requests and then serves them in order. A
    /// stream of responses are returned to the client when the server starts with
    /// first request.
    func `halfDuplexCall`(headers: Connect.Headers, onResult: @escaping (Connect.StreamResult<Grpc_Testing_StreamingOutputCallResponse>) -> Void) -> any Connect.BidirectionalStreamInterface<Grpc_Testing_StreamingOutputCallRequest>

    /// The test server will not implement this method. It will be used
    /// to test the behavior when clients call unimplemented methods.
    @discardableResult
    func `unimplementedCall`(request: Grpc_Testing_Empty, headers: Connect.Headers, completion: @escaping (ResponseMessage<Grpc_Testing_Empty>) -> Void) -> Connect.Cancelable

    /// The test server will not implement this method. It will be used
    /// to test the behavior when clients call unimplemented streaming output methods.
    func `unimplementedStreamingOutputCall`(headers: Connect.Headers, onResult: @escaping (Connect.StreamResult<Grpc_Testing_Empty>) -> Void) -> any Connect.ServerOnlyStreamInterface<Grpc_Testing_Empty>
}


extension Grpc_Testing_TestServiceClientInterface {

    public func `emptyCall`(request: Grpc_Testing_Empty, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_Empty> {
        return await Connect.AsyncUnaryWrapper { self.emptyCall(request: request, headers: headers, completion: $0) }.send()
    }

    public func `unaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_SimpleResponse> {
        return await Connect.AsyncUnaryWrapper { self.unaryCall(request: request, headers: headers, completion: $0) }.send()
    }

    public func `failUnaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_SimpleResponse> {
        return await Connect.AsyncUnaryWrapper { self.failUnaryCall(request: request, headers: headers, completion: $0) }.send()
    }

    public func `cacheableUnaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_SimpleResponse> {
        return await Connect.AsyncUnaryWrapper { self.cacheableUnaryCall(request: request, headers: headers, completion: $0) }.send()
    }

    public func `unimplementedCall`(request: Grpc_Testing_Empty, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_Empty> {
        return await Connect.AsyncUnaryWrapper { self.unimplementedCall(request: request, headers: headers, completion: $0) }.send()
    }
}

/// Concrete implementation of `Grpc_Testing_TestServiceClientInterface`.
public final class Grpc_Testing_TestServiceClient: Grpc_Testing_TestServiceClientInterface {
    private let client: Connect.ProtocolClientInterface

    public init(client: Connect.ProtocolClientInterface) {
        self.client = client
    }

    @discardableResult
    public func `emptyCall`(request: Grpc_Testing_Empty, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<Grpc_Testing_Empty>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "grpc.testing.TestService/EmptyCall", request: request, headers: headers, completion: completion)
    }

    @discardableResult
    public func `unaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<Grpc_Testing_SimpleResponse>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "grpc.testing.TestService/UnaryCall", request: request, headers: headers, completion: completion)
    }

    @discardableResult
    public func `failUnaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<Grpc_Testing_SimpleResponse>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "grpc.testing.TestService/FailUnaryCall", request: request, headers: headers, completion: completion)
    }

    @discardableResult
    public func `cacheableUnaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<Grpc_Testing_SimpleResponse>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "grpc.testing.TestService/CacheableUnaryCall", request: request, headers: headers, completion: completion)
    }

    public func `streamingOutputCall`(headers: Connect.Headers = [:], onResult: @escaping (Connect.StreamResult<Grpc_Testing_StreamingOutputCallResponse>) -> Void) -> any Connect.ServerOnlyStreamInterface<Grpc_Testing_StreamingOutputCallRequest> {
        return self.client.serverOnlyStream(path: "grpc.testing.TestService/StreamingOutputCall", headers: headers, onResult: onResult)
    }

    public func `failStreamingOutputCall`(headers: Connect.Headers = [:], onResult: @escaping (Connect.StreamResult<Grpc_Testing_StreamingOutputCallResponse>) -> Void) -> any Connect.ServerOnlyStreamInterface<Grpc_Testing_StreamingOutputCallRequest> {
        return self.client.serverOnlyStream(path: "grpc.testing.TestService/FailStreamingOutputCall", headers: headers, onResult: onResult)
    }

    public func `streamingInputCall`(headers: Connect.Headers = [:], onResult: @escaping (Connect.StreamResult<Grpc_Testing_StreamingInputCallResponse>) -> Void) -> any Connect.ClientOnlyStreamInterface<Grpc_Testing_StreamingInputCallRequest> {
        return self.client.clientOnlyStream(path: "grpc.testing.TestService/StreamingInputCall", headers: headers, onResult: onResult)
    }

    public func `fullDuplexCall`(headers: Connect.Headers = [:], onResult: @escaping (Connect.StreamResult<Grpc_Testing_StreamingOutputCallResponse>) -> Void) -> any Connect.BidirectionalStreamInterface<Grpc_Testing_StreamingOutputCallRequest> {
        return self.client.bidirectionalStream(path: "grpc.testing.TestService/FullDuplexCall", headers: headers, onResult: onResult)
    }

    public func `halfDuplexCall`(headers: Connect.Headers = [:], onResult: @escaping (Connect.StreamResult<Grpc_Testing_StreamingOutputCallResponse>) -> Void) -> any Connect.BidirectionalStreamInterface<Grpc_Testing_StreamingOutputCallRequest> {
        return self.client.bidirectionalStream(path: "grpc.testing.TestService/HalfDuplexCall", headers: headers, onResult: onResult)
    }

    @discardableResult
    public func `unimplementedCall`(request: Grpc_Testing_Empty, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<Grpc_Testing_Empty>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "grpc.testing.TestService/UnimplementedCall", request: request, headers: headers, completion: completion)
    }

    public func `unimplementedStreamingOutputCall`(headers: Connect.Headers = [:], onResult: @escaping (Connect.StreamResult<Grpc_Testing_Empty>) -> Void) -> any Connect.ServerOnlyStreamInterface<Grpc_Testing_Empty> {
        return self.client.serverOnlyStream(path: "grpc.testing.TestService/UnimplementedStreamingOutputCall", headers: headers, onResult: onResult)
    }
}

/// A simple service NOT implemented at servers so clients can test for
/// that case.
public protocol Grpc_Testing_UnimplementedServiceClientInterface {

    /// A call that no server should implement
    @discardableResult
    func `unimplementedCall`(request: Grpc_Testing_Empty, headers: Connect.Headers, completion: @escaping (ResponseMessage<Grpc_Testing_Empty>) -> Void) -> Connect.Cancelable

    /// A call that no server should implement
    func `unimplementedStreamingOutputCall`(headers: Connect.Headers, onResult: @escaping (Connect.StreamResult<Grpc_Testing_Empty>) -> Void) -> any Connect.ServerOnlyStreamInterface<Grpc_Testing_Empty>
}


extension Grpc_Testing_UnimplementedServiceClientInterface {

    public func `unimplementedCall`(request: Grpc_Testing_Empty, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_Empty> {
        return await Connect.AsyncUnaryWrapper { self.unimplementedCall(request: request, headers: headers, completion: $0) }.send()
    }
}

/// Concrete implementation of `Grpc_Testing_UnimplementedServiceClientInterface`.
public final class Grpc_Testing_UnimplementedServiceClient: Grpc_Testing_UnimplementedServiceClientInterface {
    private let client: Connect.ProtocolClientInterface

    public init(client: Connect.ProtocolClientInterface) {
        self.client = client
    }

    @discardableResult
    public func `unimplementedCall`(request: Grpc_Testing_Empty, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<Grpc_Testing_Empty>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "grpc.testing.UnimplementedService/UnimplementedCall", request: request, headers: headers, completion: completion)
    }

    public func `unimplementedStreamingOutputCall`(headers: Connect.Headers = [:], onResult: @escaping (Connect.StreamResult<Grpc_Testing_Empty>) -> Void) -> any Connect.ServerOnlyStreamInterface<Grpc_Testing_Empty> {
        return self.client.serverOnlyStream(path: "grpc.testing.UnimplementedService/UnimplementedStreamingOutputCall", headers: headers, onResult: onResult)
    }
}

/// A service used to control reconnect server.
public protocol Grpc_Testing_ReconnectServiceClientInterface {

    @discardableResult
    func `start`(request: Grpc_Testing_ReconnectParams, headers: Connect.Headers, completion: @escaping (ResponseMessage<Grpc_Testing_Empty>) -> Void) -> Connect.Cancelable

    @discardableResult
    func `stop`(request: Grpc_Testing_Empty, headers: Connect.Headers, completion: @escaping (ResponseMessage<Grpc_Testing_ReconnectInfo>) -> Void) -> Connect.Cancelable
}


extension Grpc_Testing_ReconnectServiceClientInterface {

    public func `start`(request: Grpc_Testing_ReconnectParams, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_Empty> {
        return await Connect.AsyncUnaryWrapper { self.start(request: request, headers: headers, completion: $0) }.send()
    }

    public func `stop`(request: Grpc_Testing_Empty, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_ReconnectInfo> {
        return await Connect.AsyncUnaryWrapper { self.stop(request: request, headers: headers, completion: $0) }.send()
    }
}

/// Concrete implementation of `Grpc_Testing_ReconnectServiceClientInterface`.
public final class Grpc_Testing_ReconnectServiceClient: Grpc_Testing_ReconnectServiceClientInterface {
    private let client: Connect.ProtocolClientInterface

    public init(client: Connect.ProtocolClientInterface) {
        self.client = client
    }

    @discardableResult
    public func `start`(request: Grpc_Testing_ReconnectParams, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<Grpc_Testing_Empty>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "grpc.testing.ReconnectService/Start", request: request, headers: headers, completion: completion)
    }

    @discardableResult
    public func `stop`(request: Grpc_Testing_Empty, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<Grpc_Testing_ReconnectInfo>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "grpc.testing.ReconnectService/Stop", request: request, headers: headers, completion: completion)
    }
}

/// A service used to obtain stats for verifying LB behavior.
public protocol Grpc_Testing_LoadBalancerStatsServiceClientInterface {

    /// Gets the backend distribution for RPCs sent by a test client.
    @discardableResult
    func `getClientStats`(request: Grpc_Testing_LoadBalancerStatsRequest, headers: Connect.Headers, completion: @escaping (ResponseMessage<Grpc_Testing_LoadBalancerStatsResponse>) -> Void) -> Connect.Cancelable

    /// Gets the accumulated stats for RPCs sent by a test client.
    @discardableResult
    func `getClientAccumulatedStats`(request: Grpc_Testing_LoadBalancerAccumulatedStatsRequest, headers: Connect.Headers, completion: @escaping (ResponseMessage<Grpc_Testing_LoadBalancerAccumulatedStatsResponse>) -> Void) -> Connect.Cancelable
}


extension Grpc_Testing_LoadBalancerStatsServiceClientInterface {

    public func `getClientStats`(request: Grpc_Testing_LoadBalancerStatsRequest, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_LoadBalancerStatsResponse> {
        return await Connect.AsyncUnaryWrapper { self.getClientStats(request: request, headers: headers, completion: $0) }.send()
    }

    public func `getClientAccumulatedStats`(request: Grpc_Testing_LoadBalancerAccumulatedStatsRequest, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_LoadBalancerAccumulatedStatsResponse> {
        return await Connect.AsyncUnaryWrapper { self.getClientAccumulatedStats(request: request, headers: headers, completion: $0) }.send()
    }
}

/// Concrete implementation of `Grpc_Testing_LoadBalancerStatsServiceClientInterface`.
public final class Grpc_Testing_LoadBalancerStatsServiceClient: Grpc_Testing_LoadBalancerStatsServiceClientInterface {
    private let client: Connect.ProtocolClientInterface

    public init(client: Connect.ProtocolClientInterface) {
        self.client = client
    }

    @discardableResult
    public func `getClientStats`(request: Grpc_Testing_LoadBalancerStatsRequest, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<Grpc_Testing_LoadBalancerStatsResponse>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "grpc.testing.LoadBalancerStatsService/GetClientStats", request: request, headers: headers, completion: completion)
    }

    @discardableResult
    public func `getClientAccumulatedStats`(request: Grpc_Testing_LoadBalancerAccumulatedStatsRequest, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<Grpc_Testing_LoadBalancerAccumulatedStatsResponse>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "grpc.testing.LoadBalancerStatsService/GetClientAccumulatedStats", request: request, headers: headers, completion: completion)
    }
}

/// A service to remotely control health status of an xDS test server.
public protocol Grpc_Testing_XdsUpdateHealthServiceClientInterface {

    @discardableResult
    func `setServing`(request: Grpc_Testing_Empty, headers: Connect.Headers, completion: @escaping (ResponseMessage<Grpc_Testing_Empty>) -> Void) -> Connect.Cancelable

    @discardableResult
    func `setNotServing`(request: Grpc_Testing_Empty, headers: Connect.Headers, completion: @escaping (ResponseMessage<Grpc_Testing_Empty>) -> Void) -> Connect.Cancelable
}


extension Grpc_Testing_XdsUpdateHealthServiceClientInterface {

    public func `setServing`(request: Grpc_Testing_Empty, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_Empty> {
        return await Connect.AsyncUnaryWrapper { self.setServing(request: request, headers: headers, completion: $0) }.send()
    }

    public func `setNotServing`(request: Grpc_Testing_Empty, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_Empty> {
        return await Connect.AsyncUnaryWrapper { self.setNotServing(request: request, headers: headers, completion: $0) }.send()
    }
}

/// Concrete implementation of `Grpc_Testing_XdsUpdateHealthServiceClientInterface`.
public final class Grpc_Testing_XdsUpdateHealthServiceClient: Grpc_Testing_XdsUpdateHealthServiceClientInterface {
    private let client: Connect.ProtocolClientInterface

    public init(client: Connect.ProtocolClientInterface) {
        self.client = client
    }

    @discardableResult
    public func `setServing`(request: Grpc_Testing_Empty, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<Grpc_Testing_Empty>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "grpc.testing.XdsUpdateHealthService/SetServing", request: request, headers: headers, completion: completion)
    }

    @discardableResult
    public func `setNotServing`(request: Grpc_Testing_Empty, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<Grpc_Testing_Empty>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "grpc.testing.XdsUpdateHealthService/SetNotServing", request: request, headers: headers, completion: completion)
    }
}

/// A service to dynamically update the configuration of an xDS test client.
public protocol Grpc_Testing_XdsUpdateClientConfigureServiceClientInterface {

    /// Update the tes client's configuration.
    @discardableResult
    func `configure`(request: Grpc_Testing_ClientConfigureRequest, headers: Connect.Headers, completion: @escaping (ResponseMessage<Grpc_Testing_ClientConfigureResponse>) -> Void) -> Connect.Cancelable
}


extension Grpc_Testing_XdsUpdateClientConfigureServiceClientInterface {

    public func `configure`(request: Grpc_Testing_ClientConfigureRequest, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_ClientConfigureResponse> {
        return await Connect.AsyncUnaryWrapper { self.configure(request: request, headers: headers, completion: $0) }.send()
    }
}

/// Concrete implementation of `Grpc_Testing_XdsUpdateClientConfigureServiceClientInterface`.
public final class Grpc_Testing_XdsUpdateClientConfigureServiceClient: Grpc_Testing_XdsUpdateClientConfigureServiceClientInterface {
    private let client: Connect.ProtocolClientInterface

    public init(client: Connect.ProtocolClientInterface) {
        self.client = client
    }

    @discardableResult
    public func `configure`(request: Grpc_Testing_ClientConfigureRequest, headers: Connect.Headers = [:], completion: @escaping (ResponseMessage<Grpc_Testing_ClientConfigureResponse>) -> Void) -> Connect.Cancelable {
        return self.client.unary(path: "grpc.testing.XdsUpdateClientConfigureService/Configure", request: request, headers: headers, completion: completion)
    }
}
