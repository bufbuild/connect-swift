import SwiftProtobuf

/// Represents a bidirectional stream that can send request messages and initiate closes.
public protocol BidirectionalStreamInterface<Input> {
    /// The input (request) message type.
    associatedtype Input: SwiftProtobuf.Message

    /// Send a request to the server over the stream.
    ///
    /// - parameter input: The request message to send.
    ///
    /// - returns: An instance of this stream, for syntactic sugar.
    @discardableResult
    func send(_ input: Input) throws -> Self

    /// Close the stream. No calls to `send()` are valid after calling `close()`.
    func close()
}
