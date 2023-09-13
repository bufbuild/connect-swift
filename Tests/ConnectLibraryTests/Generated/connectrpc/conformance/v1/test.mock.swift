// Code generated by protoc-gen-connect-swift. DO NOT EDIT.
//
// Source: connectrpc/conformance/v1/test.proto
//

import Combine
import Connect
import ConnectMocks
import Foundation
import SwiftProtobuf

/// Mock implementation of `Connectrpc_Conformance_V1_TestServiceClientInterface`.
///
/// Production implementations can be substituted with instances of this
/// class to mock RPC calls. Behavior can be customized
/// either through the properties on this class or by
/// subclassing the mock and overriding its methods.
///
/// Note: This class does not handle thread-safe locking, but provides
/// `@unchecked Sendable` conformance to simplify testing and mocking.
@available(iOS 13, *)
internal class Connectrpc_Conformance_V1_TestServiceClientMock: Connectrpc_Conformance_V1_TestServiceClientInterface, @unchecked Sendable {
    private var cancellables = [Combine.AnyCancellable]()

    /// Mocked for calls to `emptyCall()`.
    internal var mockEmptyCall = { (_: SwiftProtobuf.Google_Protobuf_Empty) -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty> in .init(result: .success(.init())) }
    /// Mocked for async calls to `emptyCall()`.
    internal var mockAsyncEmptyCall = { (_: SwiftProtobuf.Google_Protobuf_Empty) -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty> in .init(result: .success(.init())) }
    /// Mocked for calls to `unaryCall()`.
    internal var mockUnaryCall = { (_: Connectrpc_Conformance_V1_SimpleRequest) -> ResponseMessage<Connectrpc_Conformance_V1_SimpleResponse> in .init(result: .success(.init())) }
    /// Mocked for async calls to `unaryCall()`.
    internal var mockAsyncUnaryCall = { (_: Connectrpc_Conformance_V1_SimpleRequest) -> ResponseMessage<Connectrpc_Conformance_V1_SimpleResponse> in .init(result: .success(.init())) }
    /// Mocked for calls to `failUnaryCall()`.
    internal var mockFailUnaryCall = { (_: Connectrpc_Conformance_V1_SimpleRequest) -> ResponseMessage<Connectrpc_Conformance_V1_SimpleResponse> in .init(result: .success(.init())) }
    /// Mocked for async calls to `failUnaryCall()`.
    internal var mockAsyncFailUnaryCall = { (_: Connectrpc_Conformance_V1_SimpleRequest) -> ResponseMessage<Connectrpc_Conformance_V1_SimpleResponse> in .init(result: .success(.init())) }
    /// Mocked for calls to `cacheableUnaryCall()`.
    internal var mockCacheableUnaryCall = { (_: Connectrpc_Conformance_V1_SimpleRequest) -> ResponseMessage<Connectrpc_Conformance_V1_SimpleResponse> in .init(result: .success(.init())) }
    /// Mocked for async calls to `cacheableUnaryCall()`.
    internal var mockAsyncCacheableUnaryCall = { (_: Connectrpc_Conformance_V1_SimpleRequest) -> ResponseMessage<Connectrpc_Conformance_V1_SimpleResponse> in .init(result: .success(.init())) }
    /// Mocked for calls to `streamingOutputCall()`.
    internal var mockStreamingOutputCall = MockServerOnlyStream<Connectrpc_Conformance_V1_StreamingOutputCallRequest, Connectrpc_Conformance_V1_StreamingOutputCallResponse>()
    /// Mocked for async calls to `streamingOutputCall()`.
    internal var mockAsyncStreamingOutputCall = MockServerOnlyAsyncStream<Connectrpc_Conformance_V1_StreamingOutputCallRequest, Connectrpc_Conformance_V1_StreamingOutputCallResponse>()
    /// Mocked for calls to `failStreamingOutputCall()`.
    internal var mockFailStreamingOutputCall = MockServerOnlyStream<Connectrpc_Conformance_V1_StreamingOutputCallRequest, Connectrpc_Conformance_V1_StreamingOutputCallResponse>()
    /// Mocked for async calls to `failStreamingOutputCall()`.
    internal var mockAsyncFailStreamingOutputCall = MockServerOnlyAsyncStream<Connectrpc_Conformance_V1_StreamingOutputCallRequest, Connectrpc_Conformance_V1_StreamingOutputCallResponse>()
    /// Mocked for calls to `streamingInputCall()`.
    internal var mockStreamingInputCall = MockClientOnlyStream<Connectrpc_Conformance_V1_StreamingInputCallRequest, Connectrpc_Conformance_V1_StreamingInputCallResponse>()
    /// Mocked for async calls to `streamingInputCall()`.
    internal var mockAsyncStreamingInputCall = MockClientOnlyAsyncStream<Connectrpc_Conformance_V1_StreamingInputCallRequest, Connectrpc_Conformance_V1_StreamingInputCallResponse>()
    /// Mocked for calls to `fullDuplexCall()`.
    internal var mockFullDuplexCall = MockBidirectionalStream<Connectrpc_Conformance_V1_StreamingOutputCallRequest, Connectrpc_Conformance_V1_StreamingOutputCallResponse>()
    /// Mocked for async calls to `fullDuplexCall()`.
    internal var mockAsyncFullDuplexCall = MockBidirectionalAsyncStream<Connectrpc_Conformance_V1_StreamingOutputCallRequest, Connectrpc_Conformance_V1_StreamingOutputCallResponse>()
    /// Mocked for calls to `halfDuplexCall()`.
    internal var mockHalfDuplexCall = MockBidirectionalStream<Connectrpc_Conformance_V1_StreamingOutputCallRequest, Connectrpc_Conformance_V1_StreamingOutputCallResponse>()
    /// Mocked for async calls to `halfDuplexCall()`.
    internal var mockAsyncHalfDuplexCall = MockBidirectionalAsyncStream<Connectrpc_Conformance_V1_StreamingOutputCallRequest, Connectrpc_Conformance_V1_StreamingOutputCallResponse>()
    /// Mocked for calls to `unimplementedCall()`.
    internal var mockUnimplementedCall = { (_: SwiftProtobuf.Google_Protobuf_Empty) -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty> in .init(result: .success(.init())) }
    /// Mocked for async calls to `unimplementedCall()`.
    internal var mockAsyncUnimplementedCall = { (_: SwiftProtobuf.Google_Protobuf_Empty) -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty> in .init(result: .success(.init())) }
    /// Mocked for calls to `unimplementedStreamingOutputCall()`.
    internal var mockUnimplementedStreamingOutputCall = MockServerOnlyStream<SwiftProtobuf.Google_Protobuf_Empty, SwiftProtobuf.Google_Protobuf_Empty>()
    /// Mocked for async calls to `unimplementedStreamingOutputCall()`.
    internal var mockAsyncUnimplementedStreamingOutputCall = MockServerOnlyAsyncStream<SwiftProtobuf.Google_Protobuf_Empty, SwiftProtobuf.Google_Protobuf_Empty>()

    internal init() {}

    @discardableResult
    internal func `emptyCall`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty>) -> Void) -> Connect.Cancelable {
        completion(self.mockEmptyCall(request))
        return Connect.Cancelable {}
    }

    internal func `emptyCall`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers = [:]) async -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty> {
        return self.mockAsyncEmptyCall(request)
    }

    @discardableResult
    internal func `unaryCall`(request: Connectrpc_Conformance_V1_SimpleRequest, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<Connectrpc_Conformance_V1_SimpleResponse>) -> Void) -> Connect.Cancelable {
        completion(self.mockUnaryCall(request))
        return Connect.Cancelable {}
    }

    internal func `unaryCall`(request: Connectrpc_Conformance_V1_SimpleRequest, headers: Connect.Headers = [:]) async -> ResponseMessage<Connectrpc_Conformance_V1_SimpleResponse> {
        return self.mockAsyncUnaryCall(request)
    }

    @discardableResult
    internal func `failUnaryCall`(request: Connectrpc_Conformance_V1_SimpleRequest, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<Connectrpc_Conformance_V1_SimpleResponse>) -> Void) -> Connect.Cancelable {
        completion(self.mockFailUnaryCall(request))
        return Connect.Cancelable {}
    }

    internal func `failUnaryCall`(request: Connectrpc_Conformance_V1_SimpleRequest, headers: Connect.Headers = [:]) async -> ResponseMessage<Connectrpc_Conformance_V1_SimpleResponse> {
        return self.mockAsyncFailUnaryCall(request)
    }

    @discardableResult
    internal func `cacheableUnaryCall`(request: Connectrpc_Conformance_V1_SimpleRequest, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<Connectrpc_Conformance_V1_SimpleResponse>) -> Void) -> Connect.Cancelable {
        completion(self.mockCacheableUnaryCall(request))
        return Connect.Cancelable {}
    }

    internal func `cacheableUnaryCall`(request: Connectrpc_Conformance_V1_SimpleRequest, headers: Connect.Headers = [:]) async -> ResponseMessage<Connectrpc_Conformance_V1_SimpleResponse> {
        return self.mockAsyncCacheableUnaryCall(request)
    }

    internal func `streamingOutputCall`(headers: Connect.Headers = [:], onResult: @escaping @Sendable (Connect.StreamResult<Connectrpc_Conformance_V1_StreamingOutputCallResponse>) -> Void) -> any Connect.ServerOnlyStreamInterface<Connectrpc_Conformance_V1_StreamingOutputCallRequest> {
        self.mockStreamingOutputCall.$inputs.first { !$0.isEmpty }.sink { _ in self.mockStreamingOutputCall.outputs.forEach(onResult) }.store(in: &self.cancellables)
        return self.mockStreamingOutputCall
    }

    internal func `streamingOutputCall`(headers: Connect.Headers = [:]) -> any Connect.ServerOnlyAsyncStreamInterface<Connectrpc_Conformance_V1_StreamingOutputCallRequest, Connectrpc_Conformance_V1_StreamingOutputCallResponse> {
        return self.mockAsyncStreamingOutputCall
    }

    internal func `failStreamingOutputCall`(headers: Connect.Headers = [:], onResult: @escaping @Sendable (Connect.StreamResult<Connectrpc_Conformance_V1_StreamingOutputCallResponse>) -> Void) -> any Connect.ServerOnlyStreamInterface<Connectrpc_Conformance_V1_StreamingOutputCallRequest> {
        self.mockFailStreamingOutputCall.$inputs.first { !$0.isEmpty }.sink { _ in self.mockFailStreamingOutputCall.outputs.forEach(onResult) }.store(in: &self.cancellables)
        return self.mockFailStreamingOutputCall
    }

    internal func `failStreamingOutputCall`(headers: Connect.Headers = [:]) -> any Connect.ServerOnlyAsyncStreamInterface<Connectrpc_Conformance_V1_StreamingOutputCallRequest, Connectrpc_Conformance_V1_StreamingOutputCallResponse> {
        return self.mockAsyncFailStreamingOutputCall
    }

    internal func `streamingInputCall`(headers: Connect.Headers = [:], onResult: @escaping @Sendable (Connect.StreamResult<Connectrpc_Conformance_V1_StreamingInputCallResponse>) -> Void) -> any Connect.ClientOnlyStreamInterface<Connectrpc_Conformance_V1_StreamingInputCallRequest> {
        self.mockStreamingInputCall.$inputs.first { !$0.isEmpty }.sink { _ in self.mockStreamingInputCall.outputs.forEach(onResult) }.store(in: &self.cancellables)
        return self.mockStreamingInputCall
    }

    internal func `streamingInputCall`(headers: Connect.Headers = [:]) -> any Connect.ClientOnlyAsyncStreamInterface<Connectrpc_Conformance_V1_StreamingInputCallRequest, Connectrpc_Conformance_V1_StreamingInputCallResponse> {
        return self.mockAsyncStreamingInputCall
    }

    internal func `fullDuplexCall`(headers: Connect.Headers = [:], onResult: @escaping @Sendable (Connect.StreamResult<Connectrpc_Conformance_V1_StreamingOutputCallResponse>) -> Void) -> any Connect.BidirectionalStreamInterface<Connectrpc_Conformance_V1_StreamingOutputCallRequest> {
        self.mockFullDuplexCall.$inputs.first { !$0.isEmpty }.sink { _ in self.mockFullDuplexCall.outputs.forEach(onResult) }.store(in: &self.cancellables)
        return self.mockFullDuplexCall
    }

    internal func `fullDuplexCall`(headers: Connect.Headers = [:]) -> any Connect.BidirectionalAsyncStreamInterface<Connectrpc_Conformance_V1_StreamingOutputCallRequest, Connectrpc_Conformance_V1_StreamingOutputCallResponse> {
        return self.mockAsyncFullDuplexCall
    }

    internal func `halfDuplexCall`(headers: Connect.Headers = [:], onResult: @escaping @Sendable (Connect.StreamResult<Connectrpc_Conformance_V1_StreamingOutputCallResponse>) -> Void) -> any Connect.BidirectionalStreamInterface<Connectrpc_Conformance_V1_StreamingOutputCallRequest> {
        self.mockHalfDuplexCall.$inputs.first { !$0.isEmpty }.sink { _ in self.mockHalfDuplexCall.outputs.forEach(onResult) }.store(in: &self.cancellables)
        return self.mockHalfDuplexCall
    }

    internal func `halfDuplexCall`(headers: Connect.Headers = [:]) -> any Connect.BidirectionalAsyncStreamInterface<Connectrpc_Conformance_V1_StreamingOutputCallRequest, Connectrpc_Conformance_V1_StreamingOutputCallResponse> {
        return self.mockAsyncHalfDuplexCall
    }

    @discardableResult
    internal func `unimplementedCall`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty>) -> Void) -> Connect.Cancelable {
        completion(self.mockUnimplementedCall(request))
        return Connect.Cancelable {}
    }

    internal func `unimplementedCall`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers = [:]) async -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty> {
        return self.mockAsyncUnimplementedCall(request)
    }

    internal func `unimplementedStreamingOutputCall`(headers: Connect.Headers = [:], onResult: @escaping @Sendable (Connect.StreamResult<SwiftProtobuf.Google_Protobuf_Empty>) -> Void) -> any Connect.ServerOnlyStreamInterface<SwiftProtobuf.Google_Protobuf_Empty> {
        self.mockUnimplementedStreamingOutputCall.$inputs.first { !$0.isEmpty }.sink { _ in self.mockUnimplementedStreamingOutputCall.outputs.forEach(onResult) }.store(in: &self.cancellables)
        return self.mockUnimplementedStreamingOutputCall
    }

    internal func `unimplementedStreamingOutputCall`(headers: Connect.Headers = [:]) -> any Connect.ServerOnlyAsyncStreamInterface<SwiftProtobuf.Google_Protobuf_Empty, SwiftProtobuf.Google_Protobuf_Empty> {
        return self.mockAsyncUnimplementedStreamingOutputCall
    }
}

/// Mock implementation of `Connectrpc_Conformance_V1_UnimplementedServiceClientInterface`.
///
/// Production implementations can be substituted with instances of this
/// class to mock RPC calls. Behavior can be customized
/// either through the properties on this class or by
/// subclassing the mock and overriding its methods.
///
/// Note: This class does not handle thread-safe locking, but provides
/// `@unchecked Sendable` conformance to simplify testing and mocking.
@available(iOS 13, *)
internal class Connectrpc_Conformance_V1_UnimplementedServiceClientMock: Connectrpc_Conformance_V1_UnimplementedServiceClientInterface, @unchecked Sendable {
    private var cancellables = [Combine.AnyCancellable]()

    /// Mocked for calls to `unimplementedCall()`.
    internal var mockUnimplementedCall = { (_: SwiftProtobuf.Google_Protobuf_Empty) -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty> in .init(result: .success(.init())) }
    /// Mocked for async calls to `unimplementedCall()`.
    internal var mockAsyncUnimplementedCall = { (_: SwiftProtobuf.Google_Protobuf_Empty) -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty> in .init(result: .success(.init())) }
    /// Mocked for calls to `unimplementedStreamingOutputCall()`.
    internal var mockUnimplementedStreamingOutputCall = MockServerOnlyStream<SwiftProtobuf.Google_Protobuf_Empty, SwiftProtobuf.Google_Protobuf_Empty>()
    /// Mocked for async calls to `unimplementedStreamingOutputCall()`.
    internal var mockAsyncUnimplementedStreamingOutputCall = MockServerOnlyAsyncStream<SwiftProtobuf.Google_Protobuf_Empty, SwiftProtobuf.Google_Protobuf_Empty>()

    internal init() {}

    @discardableResult
    internal func `unimplementedCall`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty>) -> Void) -> Connect.Cancelable {
        completion(self.mockUnimplementedCall(request))
        return Connect.Cancelable {}
    }

    internal func `unimplementedCall`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers = [:]) async -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty> {
        return self.mockAsyncUnimplementedCall(request)
    }

    internal func `unimplementedStreamingOutputCall`(headers: Connect.Headers = [:], onResult: @escaping @Sendable (Connect.StreamResult<SwiftProtobuf.Google_Protobuf_Empty>) -> Void) -> any Connect.ServerOnlyStreamInterface<SwiftProtobuf.Google_Protobuf_Empty> {
        self.mockUnimplementedStreamingOutputCall.$inputs.first { !$0.isEmpty }.sink { _ in self.mockUnimplementedStreamingOutputCall.outputs.forEach(onResult) }.store(in: &self.cancellables)
        return self.mockUnimplementedStreamingOutputCall
    }

    internal func `unimplementedStreamingOutputCall`(headers: Connect.Headers = [:]) -> any Connect.ServerOnlyAsyncStreamInterface<SwiftProtobuf.Google_Protobuf_Empty, SwiftProtobuf.Google_Protobuf_Empty> {
        return self.mockAsyncUnimplementedStreamingOutputCall
    }
}

/// Mock implementation of `Connectrpc_Conformance_V1_ReconnectServiceClientInterface`.
///
/// Production implementations can be substituted with instances of this
/// class to mock RPC calls. Behavior can be customized
/// either through the properties on this class or by
/// subclassing the mock and overriding its methods.
///
/// Note: This class does not handle thread-safe locking, but provides
/// `@unchecked Sendable` conformance to simplify testing and mocking.
@available(iOS 13, *)
internal class Connectrpc_Conformance_V1_ReconnectServiceClientMock: Connectrpc_Conformance_V1_ReconnectServiceClientInterface, @unchecked Sendable {
    private var cancellables = [Combine.AnyCancellable]()

    /// Mocked for calls to `start()`.
    internal var mockStart = { (_: Connectrpc_Conformance_V1_ReconnectParams) -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty> in .init(result: .success(.init())) }
    /// Mocked for async calls to `start()`.
    internal var mockAsyncStart = { (_: Connectrpc_Conformance_V1_ReconnectParams) -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty> in .init(result: .success(.init())) }
    /// Mocked for calls to `stop()`.
    internal var mockStop = { (_: SwiftProtobuf.Google_Protobuf_Empty) -> ResponseMessage<Connectrpc_Conformance_V1_ReconnectInfo> in .init(result: .success(.init())) }
    /// Mocked for async calls to `stop()`.
    internal var mockAsyncStop = { (_: SwiftProtobuf.Google_Protobuf_Empty) -> ResponseMessage<Connectrpc_Conformance_V1_ReconnectInfo> in .init(result: .success(.init())) }

    internal init() {}

    @discardableResult
    internal func `start`(request: Connectrpc_Conformance_V1_ReconnectParams, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty>) -> Void) -> Connect.Cancelable {
        completion(self.mockStart(request))
        return Connect.Cancelable {}
    }

    internal func `start`(request: Connectrpc_Conformance_V1_ReconnectParams, headers: Connect.Headers = [:]) async -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty> {
        return self.mockAsyncStart(request)
    }

    @discardableResult
    internal func `stop`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<Connectrpc_Conformance_V1_ReconnectInfo>) -> Void) -> Connect.Cancelable {
        completion(self.mockStop(request))
        return Connect.Cancelable {}
    }

    internal func `stop`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers = [:]) async -> ResponseMessage<Connectrpc_Conformance_V1_ReconnectInfo> {
        return self.mockAsyncStop(request)
    }
}

/// Mock implementation of `Connectrpc_Conformance_V1_LoadBalancerStatsServiceClientInterface`.
///
/// Production implementations can be substituted with instances of this
/// class to mock RPC calls. Behavior can be customized
/// either through the properties on this class or by
/// subclassing the mock and overriding its methods.
///
/// Note: This class does not handle thread-safe locking, but provides
/// `@unchecked Sendable` conformance to simplify testing and mocking.
@available(iOS 13, *)
internal class Connectrpc_Conformance_V1_LoadBalancerStatsServiceClientMock: Connectrpc_Conformance_V1_LoadBalancerStatsServiceClientInterface, @unchecked Sendable {
    private var cancellables = [Combine.AnyCancellable]()

    /// Mocked for calls to `getClientStats()`.
    internal var mockGetClientStats = { (_: Connectrpc_Conformance_V1_LoadBalancerStatsRequest) -> ResponseMessage<Connectrpc_Conformance_V1_LoadBalancerStatsResponse> in .init(result: .success(.init())) }
    /// Mocked for async calls to `getClientStats()`.
    internal var mockAsyncGetClientStats = { (_: Connectrpc_Conformance_V1_LoadBalancerStatsRequest) -> ResponseMessage<Connectrpc_Conformance_V1_LoadBalancerStatsResponse> in .init(result: .success(.init())) }
    /// Mocked for calls to `getClientAccumulatedStats()`.
    internal var mockGetClientAccumulatedStats = { (_: Connectrpc_Conformance_V1_LoadBalancerAccumulatedStatsRequest) -> ResponseMessage<Connectrpc_Conformance_V1_LoadBalancerAccumulatedStatsResponse> in .init(result: .success(.init())) }
    /// Mocked for async calls to `getClientAccumulatedStats()`.
    internal var mockAsyncGetClientAccumulatedStats = { (_: Connectrpc_Conformance_V1_LoadBalancerAccumulatedStatsRequest) -> ResponseMessage<Connectrpc_Conformance_V1_LoadBalancerAccumulatedStatsResponse> in .init(result: .success(.init())) }

    internal init() {}

    @discardableResult
    internal func `getClientStats`(request: Connectrpc_Conformance_V1_LoadBalancerStatsRequest, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<Connectrpc_Conformance_V1_LoadBalancerStatsResponse>) -> Void) -> Connect.Cancelable {
        completion(self.mockGetClientStats(request))
        return Connect.Cancelable {}
    }

    internal func `getClientStats`(request: Connectrpc_Conformance_V1_LoadBalancerStatsRequest, headers: Connect.Headers = [:]) async -> ResponseMessage<Connectrpc_Conformance_V1_LoadBalancerStatsResponse> {
        return self.mockAsyncGetClientStats(request)
    }

    @discardableResult
    internal func `getClientAccumulatedStats`(request: Connectrpc_Conformance_V1_LoadBalancerAccumulatedStatsRequest, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<Connectrpc_Conformance_V1_LoadBalancerAccumulatedStatsResponse>) -> Void) -> Connect.Cancelable {
        completion(self.mockGetClientAccumulatedStats(request))
        return Connect.Cancelable {}
    }

    internal func `getClientAccumulatedStats`(request: Connectrpc_Conformance_V1_LoadBalancerAccumulatedStatsRequest, headers: Connect.Headers = [:]) async -> ResponseMessage<Connectrpc_Conformance_V1_LoadBalancerAccumulatedStatsResponse> {
        return self.mockAsyncGetClientAccumulatedStats(request)
    }
}

/// Mock implementation of `Connectrpc_Conformance_V1_XdsUpdateHealthServiceClientInterface`.
///
/// Production implementations can be substituted with instances of this
/// class to mock RPC calls. Behavior can be customized
/// either through the properties on this class or by
/// subclassing the mock and overriding its methods.
///
/// Note: This class does not handle thread-safe locking, but provides
/// `@unchecked Sendable` conformance to simplify testing and mocking.
@available(iOS 13, *)
internal class Connectrpc_Conformance_V1_XdsUpdateHealthServiceClientMock: Connectrpc_Conformance_V1_XdsUpdateHealthServiceClientInterface, @unchecked Sendable {
    private var cancellables = [Combine.AnyCancellable]()

    /// Mocked for calls to `setServing()`.
    internal var mockSetServing = { (_: SwiftProtobuf.Google_Protobuf_Empty) -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty> in .init(result: .success(.init())) }
    /// Mocked for async calls to `setServing()`.
    internal var mockAsyncSetServing = { (_: SwiftProtobuf.Google_Protobuf_Empty) -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty> in .init(result: .success(.init())) }
    /// Mocked for calls to `setNotServing()`.
    internal var mockSetNotServing = { (_: SwiftProtobuf.Google_Protobuf_Empty) -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty> in .init(result: .success(.init())) }
    /// Mocked for async calls to `setNotServing()`.
    internal var mockAsyncSetNotServing = { (_: SwiftProtobuf.Google_Protobuf_Empty) -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty> in .init(result: .success(.init())) }

    internal init() {}

    @discardableResult
    internal func `setServing`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty>) -> Void) -> Connect.Cancelable {
        completion(self.mockSetServing(request))
        return Connect.Cancelable {}
    }

    internal func `setServing`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers = [:]) async -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty> {
        return self.mockAsyncSetServing(request)
    }

    @discardableResult
    internal func `setNotServing`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty>) -> Void) -> Connect.Cancelable {
        completion(self.mockSetNotServing(request))
        return Connect.Cancelable {}
    }

    internal func `setNotServing`(request: SwiftProtobuf.Google_Protobuf_Empty, headers: Connect.Headers = [:]) async -> ResponseMessage<SwiftProtobuf.Google_Protobuf_Empty> {
        return self.mockAsyncSetNotServing(request)
    }
}

/// Mock implementation of `Connectrpc_Conformance_V1_XdsUpdateClientConfigureServiceClientInterface`.
///
/// Production implementations can be substituted with instances of this
/// class to mock RPC calls. Behavior can be customized
/// either through the properties on this class or by
/// subclassing the mock and overriding its methods.
///
/// Note: This class does not handle thread-safe locking, but provides
/// `@unchecked Sendable` conformance to simplify testing and mocking.
@available(iOS 13, *)
internal class Connectrpc_Conformance_V1_XdsUpdateClientConfigureServiceClientMock: Connectrpc_Conformance_V1_XdsUpdateClientConfigureServiceClientInterface, @unchecked Sendable {
    private var cancellables = [Combine.AnyCancellable]()

    /// Mocked for calls to `configure()`.
    internal var mockConfigure = { (_: Connectrpc_Conformance_V1_ClientConfigureRequest) -> ResponseMessage<Connectrpc_Conformance_V1_ClientConfigureResponse> in .init(result: .success(.init())) }
    /// Mocked for async calls to `configure()`.
    internal var mockAsyncConfigure = { (_: Connectrpc_Conformance_V1_ClientConfigureRequest) -> ResponseMessage<Connectrpc_Conformance_V1_ClientConfigureResponse> in .init(result: .success(.init())) }

    internal init() {}

    @discardableResult
    internal func `configure`(request: Connectrpc_Conformance_V1_ClientConfigureRequest, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<Connectrpc_Conformance_V1_ClientConfigureResponse>) -> Void) -> Connect.Cancelable {
        completion(self.mockConfigure(request))
        return Connect.Cancelable {}
    }

    internal func `configure`(request: Connectrpc_Conformance_V1_ClientConfigureRequest, headers: Connect.Headers = [:]) async -> ResponseMessage<Connectrpc_Conformance_V1_ClientConfigureResponse> {
        return self.mockAsyncConfigure(request)
    }
}
