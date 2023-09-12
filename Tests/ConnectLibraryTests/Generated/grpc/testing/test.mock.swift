// Code generated by protoc-gen-connect-swift. DO NOT EDIT.
//
// Source: grpc/testing/test.proto
//

import Combine
import Connect
import ConnectMocks
import Foundation
import SwiftProtobuf

/// Mock implementation of `Grpc_Testing_TestServiceClientInterface`.
///
/// Production implementations can be substituted with instances of this
/// class, allowing for mocking RPC calls. Behavior can be customized
/// either through the properties on this class or by
/// subclassing the class and overriding its methods.
///
/// Note: This class does not handle thread-safe locking, but provides
/// `@unchecked Sendable` conformance to simplify testing and mocking.
@available(iOS 13, *)
internal final class Grpc_Testing_TestServiceClientMock: Grpc_Testing_TestServiceClientInterface, @unchecked Sendable {
    private var cancellables = [Combine.AnyCancellable]()

    /// Mocked for calls to `emptyCall()`.
    internal var mockEmptyCall = { (_: Grpc_Testing_Empty) -> ResponseMessage<Grpc_Testing_Empty> in .init(result: .success(.init())) }
    /// Mocked for async calls to `emptyCall()`.
    internal var mockAsyncEmptyCall = { (_: Grpc_Testing_Empty) -> ResponseMessage<Grpc_Testing_Empty> in .init(result: .success(.init())) }
    /// Mocked for calls to `unaryCall()`.
    internal var mockUnaryCall = { (_: Grpc_Testing_SimpleRequest) -> ResponseMessage<Grpc_Testing_SimpleResponse> in .init(result: .success(.init())) }
    /// Mocked for async calls to `unaryCall()`.
    internal var mockAsyncUnaryCall = { (_: Grpc_Testing_SimpleRequest) -> ResponseMessage<Grpc_Testing_SimpleResponse> in .init(result: .success(.init())) }
    /// Mocked for calls to `failUnaryCall()`.
    internal var mockFailUnaryCall = { (_: Grpc_Testing_SimpleRequest) -> ResponseMessage<Grpc_Testing_SimpleResponse> in .init(result: .success(.init())) }
    /// Mocked for async calls to `failUnaryCall()`.
    internal var mockAsyncFailUnaryCall = { (_: Grpc_Testing_SimpleRequest) -> ResponseMessage<Grpc_Testing_SimpleResponse> in .init(result: .success(.init())) }
    /// Mocked for calls to `cacheableUnaryCall()`.
    internal var mockCacheableUnaryCall = { (_: Grpc_Testing_SimpleRequest) -> ResponseMessage<Grpc_Testing_SimpleResponse> in .init(result: .success(.init())) }
    /// Mocked for async calls to `cacheableUnaryCall()`.
    internal var mockAsyncCacheableUnaryCall = { (_: Grpc_Testing_SimpleRequest) -> ResponseMessage<Grpc_Testing_SimpleResponse> in .init(result: .success(.init())) }
    /// Mocked for calls to `streamingOutputCall()`.
    internal var mockStreamingOutputCall = MockServerOnlyStream<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse>()
    /// Mocked for async calls to `streamingOutputCall()`.
    internal var mockAsyncStreamingOutputCall = MockServerOnlyAsyncStream<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse>()
    /// Mocked for calls to `failStreamingOutputCall()`.
    internal var mockFailStreamingOutputCall = MockServerOnlyStream<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse>()
    /// Mocked for async calls to `failStreamingOutputCall()`.
    internal var mockAsyncFailStreamingOutputCall = MockServerOnlyAsyncStream<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse>()
    /// Mocked for calls to `streamingInputCall()`.
    internal var mockStreamingInputCall = MockClientOnlyStream<Grpc_Testing_StreamingInputCallRequest, Grpc_Testing_StreamingInputCallResponse>()
    /// Mocked for async calls to `streamingInputCall()`.
    internal var mockAsyncStreamingInputCall = MockClientOnlyAsyncStream<Grpc_Testing_StreamingInputCallRequest, Grpc_Testing_StreamingInputCallResponse>()
    /// Mocked for calls to `fullDuplexCall()`.
    internal var mockFullDuplexCall = MockBidirectionalStream<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse>()
    /// Mocked for async calls to `fullDuplexCall()`.
    internal var mockAsyncFullDuplexCall = MockBidirectionalAsyncStream<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse>()
    /// Mocked for calls to `halfDuplexCall()`.
    internal var mockHalfDuplexCall = MockBidirectionalStream<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse>()
    /// Mocked for async calls to `halfDuplexCall()`.
    internal var mockAsyncHalfDuplexCall = MockBidirectionalAsyncStream<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse>()
    /// Mocked for calls to `unimplementedCall()`.
    internal var mockUnimplementedCall = { (_: Grpc_Testing_Empty) -> ResponseMessage<Grpc_Testing_Empty> in .init(result: .success(.init())) }
    /// Mocked for async calls to `unimplementedCall()`.
    internal var mockAsyncUnimplementedCall = { (_: Grpc_Testing_Empty) -> ResponseMessage<Grpc_Testing_Empty> in .init(result: .success(.init())) }
    /// Mocked for calls to `unimplementedStreamingOutputCall()`.
    internal var mockUnimplementedStreamingOutputCall = MockServerOnlyStream<Grpc_Testing_Empty, Grpc_Testing_Empty>()
    /// Mocked for async calls to `unimplementedStreamingOutputCall()`.
    internal var mockAsyncUnimplementedStreamingOutputCall = MockServerOnlyAsyncStream<Grpc_Testing_Empty, Grpc_Testing_Empty>()

    internal init() {}

    @discardableResult
    internal func `emptyCall`(request: Grpc_Testing_Empty, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<Grpc_Testing_Empty>) -> Void) -> Connect.Cancelable {
        completion(self.mockEmptyCall(request))
        return Connect.Cancelable {}
    }

    internal func `emptyCall`(request: Grpc_Testing_Empty, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_Empty> {
        return self.mockAsyncEmptyCall(request)
    }

    @discardableResult
    internal func `unaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<Grpc_Testing_SimpleResponse>) -> Void) -> Connect.Cancelable {
        completion(self.mockUnaryCall(request))
        return Connect.Cancelable {}
    }

    internal func `unaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_SimpleResponse> {
        return self.mockAsyncUnaryCall(request)
    }

    @discardableResult
    internal func `failUnaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<Grpc_Testing_SimpleResponse>) -> Void) -> Connect.Cancelable {
        completion(self.mockFailUnaryCall(request))
        return Connect.Cancelable {}
    }

    internal func `failUnaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_SimpleResponse> {
        return self.mockAsyncFailUnaryCall(request)
    }

    @discardableResult
    internal func `cacheableUnaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<Grpc_Testing_SimpleResponse>) -> Void) -> Connect.Cancelable {
        completion(self.mockCacheableUnaryCall(request))
        return Connect.Cancelable {}
    }

    internal func `cacheableUnaryCall`(request: Grpc_Testing_SimpleRequest, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_SimpleResponse> {
        return self.mockAsyncCacheableUnaryCall(request)
    }

    internal func `streamingOutputCall`(headers: Connect.Headers = [:], onResult: @escaping @Sendable (Connect.StreamResult<Grpc_Testing_StreamingOutputCallResponse>) -> Void) -> any Connect.ServerOnlyStreamInterface<Grpc_Testing_StreamingOutputCallRequest> {
        self.mockStreamingOutputCall.$inputs.first { !$0.isEmpty }.sink { _ in self.mockStreamingOutputCall.outputs.forEach(onResult) }.store(in: &self.cancellables)
        return self.mockStreamingOutputCall
    }

    internal func `streamingOutputCall`(headers: Connect.Headers = [:]) -> any Connect.ServerOnlyAsyncStreamInterface<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse> {
        return self.mockAsyncStreamingOutputCall
    }

    internal func `failStreamingOutputCall`(headers: Connect.Headers = [:], onResult: @escaping @Sendable (Connect.StreamResult<Grpc_Testing_StreamingOutputCallResponse>) -> Void) -> any Connect.ServerOnlyStreamInterface<Grpc_Testing_StreamingOutputCallRequest> {
        self.mockFailStreamingOutputCall.$inputs.first { !$0.isEmpty }.sink { _ in self.mockFailStreamingOutputCall.outputs.forEach(onResult) }.store(in: &self.cancellables)
        return self.mockFailStreamingOutputCall
    }

    internal func `failStreamingOutputCall`(headers: Connect.Headers = [:]) -> any Connect.ServerOnlyAsyncStreamInterface<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse> {
        return self.mockAsyncFailStreamingOutputCall
    }

    internal func `streamingInputCall`(headers: Connect.Headers = [:], onResult: @escaping @Sendable (Connect.StreamResult<Grpc_Testing_StreamingInputCallResponse>) -> Void) -> any Connect.ClientOnlyStreamInterface<Grpc_Testing_StreamingInputCallRequest> {
        self.mockStreamingInputCall.$inputs.first { !$0.isEmpty }.sink { _ in self.mockStreamingInputCall.outputs.forEach(onResult) }.store(in: &self.cancellables)
        return self.mockStreamingInputCall
    }

    internal func `streamingInputCall`(headers: Connect.Headers = [:]) -> any Connect.ClientOnlyAsyncStreamInterface<Grpc_Testing_StreamingInputCallRequest, Grpc_Testing_StreamingInputCallResponse> {
        return self.mockAsyncStreamingInputCall
    }

    internal func `fullDuplexCall`(headers: Connect.Headers = [:], onResult: @escaping @Sendable (Connect.StreamResult<Grpc_Testing_StreamingOutputCallResponse>) -> Void) -> any Connect.BidirectionalStreamInterface<Grpc_Testing_StreamingOutputCallRequest> {
        self.mockFullDuplexCall.$inputs.first { !$0.isEmpty }.sink { _ in self.mockFullDuplexCall.outputs.forEach(onResult) }.store(in: &self.cancellables)
        return self.mockFullDuplexCall
    }

    internal func `fullDuplexCall`(headers: Connect.Headers = [:]) -> any Connect.BidirectionalAsyncStreamInterface<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse> {
        return self.mockAsyncFullDuplexCall
    }

    internal func `halfDuplexCall`(headers: Connect.Headers = [:], onResult: @escaping @Sendable (Connect.StreamResult<Grpc_Testing_StreamingOutputCallResponse>) -> Void) -> any Connect.BidirectionalStreamInterface<Grpc_Testing_StreamingOutputCallRequest> {
        self.mockHalfDuplexCall.$inputs.first { !$0.isEmpty }.sink { _ in self.mockHalfDuplexCall.outputs.forEach(onResult) }.store(in: &self.cancellables)
        return self.mockHalfDuplexCall
    }

    internal func `halfDuplexCall`(headers: Connect.Headers = [:]) -> any Connect.BidirectionalAsyncStreamInterface<Grpc_Testing_StreamingOutputCallRequest, Grpc_Testing_StreamingOutputCallResponse> {
        return self.mockAsyncHalfDuplexCall
    }

    @discardableResult
    internal func `unimplementedCall`(request: Grpc_Testing_Empty, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<Grpc_Testing_Empty>) -> Void) -> Connect.Cancelable {
        completion(self.mockUnimplementedCall(request))
        return Connect.Cancelable {}
    }

    internal func `unimplementedCall`(request: Grpc_Testing_Empty, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_Empty> {
        return self.mockAsyncUnimplementedCall(request)
    }

    internal func `unimplementedStreamingOutputCall`(headers: Connect.Headers = [:], onResult: @escaping @Sendable (Connect.StreamResult<Grpc_Testing_Empty>) -> Void) -> any Connect.ServerOnlyStreamInterface<Grpc_Testing_Empty> {
        self.mockUnimplementedStreamingOutputCall.$inputs.first { !$0.isEmpty }.sink { _ in self.mockUnimplementedStreamingOutputCall.outputs.forEach(onResult) }.store(in: &self.cancellables)
        return self.mockUnimplementedStreamingOutputCall
    }

    internal func `unimplementedStreamingOutputCall`(headers: Connect.Headers = [:]) -> any Connect.ServerOnlyAsyncStreamInterface<Grpc_Testing_Empty, Grpc_Testing_Empty> {
        return self.mockAsyncUnimplementedStreamingOutputCall
    }
}

/// Mock implementation of `Grpc_Testing_UnimplementedServiceClientInterface`.
///
/// Production implementations can be substituted with instances of this
/// class, allowing for mocking RPC calls. Behavior can be customized
/// either through the properties on this class or by
/// subclassing the class and overriding its methods.
///
/// Note: This class does not handle thread-safe locking, but provides
/// `@unchecked Sendable` conformance to simplify testing and mocking.
@available(iOS 13, *)
internal final class Grpc_Testing_UnimplementedServiceClientMock: Grpc_Testing_UnimplementedServiceClientInterface, @unchecked Sendable {
    private var cancellables = [Combine.AnyCancellable]()

    /// Mocked for calls to `unimplementedCall()`.
    internal var mockUnimplementedCall = { (_: Grpc_Testing_Empty) -> ResponseMessage<Grpc_Testing_Empty> in .init(result: .success(.init())) }
    /// Mocked for async calls to `unimplementedCall()`.
    internal var mockAsyncUnimplementedCall = { (_: Grpc_Testing_Empty) -> ResponseMessage<Grpc_Testing_Empty> in .init(result: .success(.init())) }
    /// Mocked for calls to `unimplementedStreamingOutputCall()`.
    internal var mockUnimplementedStreamingOutputCall = MockServerOnlyStream<Grpc_Testing_Empty, Grpc_Testing_Empty>()
    /// Mocked for async calls to `unimplementedStreamingOutputCall()`.
    internal var mockAsyncUnimplementedStreamingOutputCall = MockServerOnlyAsyncStream<Grpc_Testing_Empty, Grpc_Testing_Empty>()

    internal init() {}

    @discardableResult
    internal func `unimplementedCall`(request: Grpc_Testing_Empty, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<Grpc_Testing_Empty>) -> Void) -> Connect.Cancelable {
        completion(self.mockUnimplementedCall(request))
        return Connect.Cancelable {}
    }

    internal func `unimplementedCall`(request: Grpc_Testing_Empty, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_Empty> {
        return self.mockAsyncUnimplementedCall(request)
    }

    internal func `unimplementedStreamingOutputCall`(headers: Connect.Headers = [:], onResult: @escaping @Sendable (Connect.StreamResult<Grpc_Testing_Empty>) -> Void) -> any Connect.ServerOnlyStreamInterface<Grpc_Testing_Empty> {
        self.mockUnimplementedStreamingOutputCall.$inputs.first { !$0.isEmpty }.sink { _ in self.mockUnimplementedStreamingOutputCall.outputs.forEach(onResult) }.store(in: &self.cancellables)
        return self.mockUnimplementedStreamingOutputCall
    }

    internal func `unimplementedStreamingOutputCall`(headers: Connect.Headers = [:]) -> any Connect.ServerOnlyAsyncStreamInterface<Grpc_Testing_Empty, Grpc_Testing_Empty> {
        return self.mockAsyncUnimplementedStreamingOutputCall
    }
}

/// Mock implementation of `Grpc_Testing_ReconnectServiceClientInterface`.
///
/// Production implementations can be substituted with instances of this
/// class, allowing for mocking RPC calls. Behavior can be customized
/// either through the properties on this class or by
/// subclassing the class and overriding its methods.
///
/// Note: This class does not handle thread-safe locking, but provides
/// `@unchecked Sendable` conformance to simplify testing and mocking.
@available(iOS 13, *)
internal final class Grpc_Testing_ReconnectServiceClientMock: Grpc_Testing_ReconnectServiceClientInterface, @unchecked Sendable {
    private var cancellables = [Combine.AnyCancellable]()

    /// Mocked for calls to `start()`.
    internal var mockStart = { (_: Grpc_Testing_ReconnectParams) -> ResponseMessage<Grpc_Testing_Empty> in .init(result: .success(.init())) }
    /// Mocked for async calls to `start()`.
    internal var mockAsyncStart = { (_: Grpc_Testing_ReconnectParams) -> ResponseMessage<Grpc_Testing_Empty> in .init(result: .success(.init())) }
    /// Mocked for calls to `stop()`.
    internal var mockStop = { (_: Grpc_Testing_Empty) -> ResponseMessage<Grpc_Testing_ReconnectInfo> in .init(result: .success(.init())) }
    /// Mocked for async calls to `stop()`.
    internal var mockAsyncStop = { (_: Grpc_Testing_Empty) -> ResponseMessage<Grpc_Testing_ReconnectInfo> in .init(result: .success(.init())) }

    internal init() {}

    @discardableResult
    internal func `start`(request: Grpc_Testing_ReconnectParams, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<Grpc_Testing_Empty>) -> Void) -> Connect.Cancelable {
        completion(self.mockStart(request))
        return Connect.Cancelable {}
    }

    internal func `start`(request: Grpc_Testing_ReconnectParams, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_Empty> {
        return self.mockAsyncStart(request)
    }

    @discardableResult
    internal func `stop`(request: Grpc_Testing_Empty, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<Grpc_Testing_ReconnectInfo>) -> Void) -> Connect.Cancelable {
        completion(self.mockStop(request))
        return Connect.Cancelable {}
    }

    internal func `stop`(request: Grpc_Testing_Empty, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_ReconnectInfo> {
        return self.mockAsyncStop(request)
    }
}

/// Mock implementation of `Grpc_Testing_LoadBalancerStatsServiceClientInterface`.
///
/// Production implementations can be substituted with instances of this
/// class, allowing for mocking RPC calls. Behavior can be customized
/// either through the properties on this class or by
/// subclassing the class and overriding its methods.
///
/// Note: This class does not handle thread-safe locking, but provides
/// `@unchecked Sendable` conformance to simplify testing and mocking.
@available(iOS 13, *)
internal final class Grpc_Testing_LoadBalancerStatsServiceClientMock: Grpc_Testing_LoadBalancerStatsServiceClientInterface, @unchecked Sendable {
    private var cancellables = [Combine.AnyCancellable]()

    /// Mocked for calls to `getClientStats()`.
    internal var mockGetClientStats = { (_: Grpc_Testing_LoadBalancerStatsRequest) -> ResponseMessage<Grpc_Testing_LoadBalancerStatsResponse> in .init(result: .success(.init())) }
    /// Mocked for async calls to `getClientStats()`.
    internal var mockAsyncGetClientStats = { (_: Grpc_Testing_LoadBalancerStatsRequest) -> ResponseMessage<Grpc_Testing_LoadBalancerStatsResponse> in .init(result: .success(.init())) }
    /// Mocked for calls to `getClientAccumulatedStats()`.
    internal var mockGetClientAccumulatedStats = { (_: Grpc_Testing_LoadBalancerAccumulatedStatsRequest) -> ResponseMessage<Grpc_Testing_LoadBalancerAccumulatedStatsResponse> in .init(result: .success(.init())) }
    /// Mocked for async calls to `getClientAccumulatedStats()`.
    internal var mockAsyncGetClientAccumulatedStats = { (_: Grpc_Testing_LoadBalancerAccumulatedStatsRequest) -> ResponseMessage<Grpc_Testing_LoadBalancerAccumulatedStatsResponse> in .init(result: .success(.init())) }

    internal init() {}

    @discardableResult
    internal func `getClientStats`(request: Grpc_Testing_LoadBalancerStatsRequest, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<Grpc_Testing_LoadBalancerStatsResponse>) -> Void) -> Connect.Cancelable {
        completion(self.mockGetClientStats(request))
        return Connect.Cancelable {}
    }

    internal func `getClientStats`(request: Grpc_Testing_LoadBalancerStatsRequest, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_LoadBalancerStatsResponse> {
        return self.mockAsyncGetClientStats(request)
    }

    @discardableResult
    internal func `getClientAccumulatedStats`(request: Grpc_Testing_LoadBalancerAccumulatedStatsRequest, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<Grpc_Testing_LoadBalancerAccumulatedStatsResponse>) -> Void) -> Connect.Cancelable {
        completion(self.mockGetClientAccumulatedStats(request))
        return Connect.Cancelable {}
    }

    internal func `getClientAccumulatedStats`(request: Grpc_Testing_LoadBalancerAccumulatedStatsRequest, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_LoadBalancerAccumulatedStatsResponse> {
        return self.mockAsyncGetClientAccumulatedStats(request)
    }
}

/// Mock implementation of `Grpc_Testing_XdsUpdateHealthServiceClientInterface`.
///
/// Production implementations can be substituted with instances of this
/// class, allowing for mocking RPC calls. Behavior can be customized
/// either through the properties on this class or by
/// subclassing the class and overriding its methods.
///
/// Note: This class does not handle thread-safe locking, but provides
/// `@unchecked Sendable` conformance to simplify testing and mocking.
@available(iOS 13, *)
internal final class Grpc_Testing_XdsUpdateHealthServiceClientMock: Grpc_Testing_XdsUpdateHealthServiceClientInterface, @unchecked Sendable {
    private var cancellables = [Combine.AnyCancellable]()

    /// Mocked for calls to `setServing()`.
    internal var mockSetServing = { (_: Grpc_Testing_Empty) -> ResponseMessage<Grpc_Testing_Empty> in .init(result: .success(.init())) }
    /// Mocked for async calls to `setServing()`.
    internal var mockAsyncSetServing = { (_: Grpc_Testing_Empty) -> ResponseMessage<Grpc_Testing_Empty> in .init(result: .success(.init())) }
    /// Mocked for calls to `setNotServing()`.
    internal var mockSetNotServing = { (_: Grpc_Testing_Empty) -> ResponseMessage<Grpc_Testing_Empty> in .init(result: .success(.init())) }
    /// Mocked for async calls to `setNotServing()`.
    internal var mockAsyncSetNotServing = { (_: Grpc_Testing_Empty) -> ResponseMessage<Grpc_Testing_Empty> in .init(result: .success(.init())) }

    internal init() {}

    @discardableResult
    internal func `setServing`(request: Grpc_Testing_Empty, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<Grpc_Testing_Empty>) -> Void) -> Connect.Cancelable {
        completion(self.mockSetServing(request))
        return Connect.Cancelable {}
    }

    internal func `setServing`(request: Grpc_Testing_Empty, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_Empty> {
        return self.mockAsyncSetServing(request)
    }

    @discardableResult
    internal func `setNotServing`(request: Grpc_Testing_Empty, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<Grpc_Testing_Empty>) -> Void) -> Connect.Cancelable {
        completion(self.mockSetNotServing(request))
        return Connect.Cancelable {}
    }

    internal func `setNotServing`(request: Grpc_Testing_Empty, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_Empty> {
        return self.mockAsyncSetNotServing(request)
    }
}

/// Mock implementation of `Grpc_Testing_XdsUpdateClientConfigureServiceClientInterface`.
///
/// Production implementations can be substituted with instances of this
/// class, allowing for mocking RPC calls. Behavior can be customized
/// either through the properties on this class or by
/// subclassing the class and overriding its methods.
///
/// Note: This class does not handle thread-safe locking, but provides
/// `@unchecked Sendable` conformance to simplify testing and mocking.
@available(iOS 13, *)
internal final class Grpc_Testing_XdsUpdateClientConfigureServiceClientMock: Grpc_Testing_XdsUpdateClientConfigureServiceClientInterface, @unchecked Sendable {
    private var cancellables = [Combine.AnyCancellable]()

    /// Mocked for calls to `configure()`.
    internal var mockConfigure = { (_: Grpc_Testing_ClientConfigureRequest) -> ResponseMessage<Grpc_Testing_ClientConfigureResponse> in .init(result: .success(.init())) }
    /// Mocked for async calls to `configure()`.
    internal var mockAsyncConfigure = { (_: Grpc_Testing_ClientConfigureRequest) -> ResponseMessage<Grpc_Testing_ClientConfigureResponse> in .init(result: .success(.init())) }

    internal init() {}

    @discardableResult
    internal func `configure`(request: Grpc_Testing_ClientConfigureRequest, headers: Connect.Headers = [:], completion: @escaping @Sendable (ResponseMessage<Grpc_Testing_ClientConfigureResponse>) -> Void) -> Connect.Cancelable {
        completion(self.mockConfigure(request))
        return Connect.Cancelable {}
    }

    internal func `configure`(request: Grpc_Testing_ClientConfigureRequest, headers: Connect.Headers = [:]) async -> ResponseMessage<Grpc_Testing_ClientConfigureResponse> {
        return self.mockAsyncConfigure(request)
    }
}
