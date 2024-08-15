// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: connectrpc/conformance/v1/config.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2023-2024 The Connect Authors
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
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

enum Connectrpc_Conformance_V1_HTTPVersion: SwiftProtobuf.Enum, Swift.CaseIterable {
  typealias RawValue = Int
  case unspecified // = 0
  case httpVersion1 // = 1
  case httpVersion2 // = 2
  case httpVersion3 // = 3
  case UNRECOGNIZED(Int)

  init() {
    self = .unspecified
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .httpVersion1
    case 2: self = .httpVersion2
    case 3: self = .httpVersion3
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .httpVersion1: return 1
    case .httpVersion2: return 2
    case .httpVersion3: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static let allCases: [Connectrpc_Conformance_V1_HTTPVersion] = [
    .unspecified,
    .httpVersion1,
    .httpVersion2,
    .httpVersion3,
  ]

}

enum Connectrpc_Conformance_V1_Protocol: SwiftProtobuf.Enum, Swift.CaseIterable {
  typealias RawValue = Int
  case unspecified // = 0
  case connect // = 1
  case grpc // = 2

  /// TODO: Support add'l protocols:
  ///PROTOCOL_GRPC_WEB_TEXT = 4;
  ///PROTOCOL_REST_TRANSCODING = 5;
  case grpcWeb // = 3
  case UNRECOGNIZED(Int)

  init() {
    self = .unspecified
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .connect
    case 2: self = .grpc
    case 3: self = .grpcWeb
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .connect: return 1
    case .grpc: return 2
    case .grpcWeb: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static let allCases: [Connectrpc_Conformance_V1_Protocol] = [
    .unspecified,
    .connect,
    .grpc,
    .grpcWeb,
  ]

}

enum Connectrpc_Conformance_V1_Codec: SwiftProtobuf.Enum, Swift.CaseIterable {
  typealias RawValue = Int
  case unspecified // = 0
  case proto // = 1
  case json // = 2

  /// not used; will be ignored
  ///
  /// NOTE: This enum value was marked as deprecated in the .proto file
  case text // = 3
  case UNRECOGNIZED(Int)

  init() {
    self = .unspecified
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .proto
    case 2: self = .json
    case 3: self = .text
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .proto: return 1
    case .json: return 2
    case .text: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static let allCases: [Connectrpc_Conformance_V1_Codec] = [
    .unspecified,
    .proto,
    .json,
    .text,
  ]

}

enum Connectrpc_Conformance_V1_Compression: SwiftProtobuf.Enum, Swift.CaseIterable {
  typealias RawValue = Int
  case unspecified // = 0
  case identity // = 1
  case gzip // = 2
  case br // = 3
  case zstd // = 4
  case deflate // = 5
  case snappy // = 6
  case UNRECOGNIZED(Int)

  init() {
    self = .unspecified
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .identity
    case 2: self = .gzip
    case 3: self = .br
    case 4: self = .zstd
    case 5: self = .deflate
    case 6: self = .snappy
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .identity: return 1
    case .gzip: return 2
    case .br: return 3
    case .zstd: return 4
    case .deflate: return 5
    case .snappy: return 6
    case .UNRECOGNIZED(let i): return i
    }
  }

  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static let allCases: [Connectrpc_Conformance_V1_Compression] = [
    .unspecified,
    .identity,
    .gzip,
    .br,
    .zstd,
    .deflate,
    .snappy,
  ]

}

enum Connectrpc_Conformance_V1_StreamType: SwiftProtobuf.Enum, Swift.CaseIterable {
  typealias RawValue = Int
  case unspecified // = 0
  case unary // = 1
  case clientStream // = 2
  case serverStream // = 3
  case halfDuplexBidiStream // = 4
  case fullDuplexBidiStream // = 5
  case UNRECOGNIZED(Int)

  init() {
    self = .unspecified
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .unary
    case 2: self = .clientStream
    case 3: self = .serverStream
    case 4: self = .halfDuplexBidiStream
    case 5: self = .fullDuplexBidiStream
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .unary: return 1
    case .clientStream: return 2
    case .serverStream: return 3
    case .halfDuplexBidiStream: return 4
    case .fullDuplexBidiStream: return 5
    case .UNRECOGNIZED(let i): return i
    }
  }

  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static let allCases: [Connectrpc_Conformance_V1_StreamType] = [
    .unspecified,
    .unary,
    .clientStream,
    .serverStream,
    .halfDuplexBidiStream,
    .fullDuplexBidiStream,
  ]

}

enum Connectrpc_Conformance_V1_Code: SwiftProtobuf.Enum, Swift.CaseIterable {
  typealias RawValue = Int
  case unspecified // = 0
  case canceled // = 1
  case unknown // = 2
  case invalidArgument // = 3
  case deadlineExceeded // = 4
  case notFound // = 5
  case alreadyExists // = 6
  case permissionDenied // = 7
  case resourceExhausted // = 8
  case failedPrecondition // = 9
  case aborted // = 10
  case outOfRange // = 11
  case unimplemented // = 12
  case `internal` // = 13
  case unavailable // = 14
  case dataLoss // = 15
  case unauthenticated // = 16
  case UNRECOGNIZED(Int)

  init() {
    self = .unspecified
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .canceled
    case 2: self = .unknown
    case 3: self = .invalidArgument
    case 4: self = .deadlineExceeded
    case 5: self = .notFound
    case 6: self = .alreadyExists
    case 7: self = .permissionDenied
    case 8: self = .resourceExhausted
    case 9: self = .failedPrecondition
    case 10: self = .aborted
    case 11: self = .outOfRange
    case 12: self = .unimplemented
    case 13: self = .internal
    case 14: self = .unavailable
    case 15: self = .dataLoss
    case 16: self = .unauthenticated
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .canceled: return 1
    case .unknown: return 2
    case .invalidArgument: return 3
    case .deadlineExceeded: return 4
    case .notFound: return 5
    case .alreadyExists: return 6
    case .permissionDenied: return 7
    case .resourceExhausted: return 8
    case .failedPrecondition: return 9
    case .aborted: return 10
    case .outOfRange: return 11
    case .unimplemented: return 12
    case .internal: return 13
    case .unavailable: return 14
    case .dataLoss: return 15
    case .unauthenticated: return 16
    case .UNRECOGNIZED(let i): return i
    }
  }

  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static let allCases: [Connectrpc_Conformance_V1_Code] = [
    .unspecified,
    .canceled,
    .unknown,
    .invalidArgument,
    .deadlineExceeded,
    .notFound,
    .alreadyExists,
    .permissionDenied,
    .resourceExhausted,
    .failedPrecondition,
    .aborted,
    .outOfRange,
    .unimplemented,
    .internal,
    .unavailable,
    .dataLoss,
    .unauthenticated,
  ]

}

/// Config defines the configuration for running conformance tests.
/// This enumerates all of the "flavors" of the test suite to run.
struct Connectrpc_Conformance_V1_Config: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The features supported by the client or server under test.
  /// This is used to filter the set of test cases that are run.
  /// If absent, an empty message is used. See Features for more
  /// on how empty/absent fields are interpreted.
  var features: Connectrpc_Conformance_V1_Features {
    get {return _features ?? Connectrpc_Conformance_V1_Features()}
    set {_features = newValue}
  }
  /// Returns true if `features` has been explicitly set.
  var hasFeatures: Bool {return self._features != nil}
  /// Clears the value of `features`. Subsequent reads from it will return its default value.
  mutating func clearFeatures() {self._features = nil}

  /// This can indicate additional permutations that are supported
  /// that might otherwise be excluded based on the above features.
  var includeCases: [Connectrpc_Conformance_V1_ConfigCase] = []

  /// This can indicates permutations that are not supported even
  /// though their support might be implied by the above features.
  var excludeCases: [Connectrpc_Conformance_V1_ConfigCase] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _features: Connectrpc_Conformance_V1_Features? = nil
}

/// Features define the feature set that a client or server supports. They are
/// used to determine the server configurations and test cases that
/// will be run. They are defined in YAML files and are specified as part of the
/// --conf flag to the test runner.
struct Connectrpc_Conformance_V1_Features: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Supported HTTP versions.
  /// If empty, HTTP 1.1 and HTTP/2 are assumed.
  var versions: [Connectrpc_Conformance_V1_HTTPVersion] = []

  /// Supported protocols.
  /// If empty, all three are assumed: Connect, gRPC, and gRPC-Web.
  var protocols: [Connectrpc_Conformance_V1_Protocol] = []

  /// Supported codecs.
  /// If empty, "proto" and "json" are assumed.
  var codecs: [Connectrpc_Conformance_V1_Codec] = []

  /// Supported compression algorithms.
  /// If empty, "identity" and "gzip" are assumed.
  var compressions: [Connectrpc_Conformance_V1_Compression] = []

  /// Supported stream types.
  /// If empty, all stream types are assumed. This is usually for
  /// clients, since some client environments may not be able to
  /// support certain kinds of streaming operations, especially
  /// bidirectional streams.
  var streamTypes: [Connectrpc_Conformance_V1_StreamType] = []

  /// Whether H2C (unencrypted, non-TLS HTTP/2 over cleartext) is supported.
  /// If absent, true is assumed.
  var supportsH2C: Bool {
    get {return _supportsH2C ?? false}
    set {_supportsH2C = newValue}
  }
  /// Returns true if `supportsH2C` has been explicitly set.
  var hasSupportsH2C: Bool {return self._supportsH2C != nil}
  /// Clears the value of `supportsH2C`. Subsequent reads from it will return its default value.
  mutating func clearSupportsH2C() {self._supportsH2C = nil}

  /// Whether TLS is supported.
  /// If absent, true is assumed.
  var supportsTls: Bool {
    get {return _supportsTls ?? false}
    set {_supportsTls = newValue}
  }
  /// Returns true if `supportsTls` has been explicitly set.
  var hasSupportsTls: Bool {return self._supportsTls != nil}
  /// Clears the value of `supportsTls`. Subsequent reads from it will return its default value.
  mutating func clearSupportsTls() {self._supportsTls = nil}

  /// Whether the client supports TLS certificates.
  /// If absent, false is assumed. This should not be set if
  /// supports_tls is false.
  var supportsTlsClientCerts: Bool {
    get {return _supportsTlsClientCerts ?? false}
    set {_supportsTlsClientCerts = newValue}
  }
  /// Returns true if `supportsTlsClientCerts` has been explicitly set.
  var hasSupportsTlsClientCerts: Bool {return self._supportsTlsClientCerts != nil}
  /// Clears the value of `supportsTlsClientCerts`. Subsequent reads from it will return its default value.
  mutating func clearSupportsTlsClientCerts() {self._supportsTlsClientCerts = nil}

  /// Whether trailers are supported.
  /// If absent, true is assumed. If false, implies that gRPC protocol is not allowed.
  var supportsTrailers: Bool {
    get {return _supportsTrailers ?? false}
    set {_supportsTrailers = newValue}
  }
  /// Returns true if `supportsTrailers` has been explicitly set.
  var hasSupportsTrailers: Bool {return self._supportsTrailers != nil}
  /// Clears the value of `supportsTrailers`. Subsequent reads from it will return its default value.
  mutating func clearSupportsTrailers() {self._supportsTrailers = nil}

  /// Whether half duplex bidi streams are supported over HTTP/1.1.
  /// If absent, false is assumed.
  var supportsHalfDuplexBidiOverHTTP1: Bool {
    get {return _supportsHalfDuplexBidiOverHTTP1 ?? false}
    set {_supportsHalfDuplexBidiOverHTTP1 = newValue}
  }
  /// Returns true if `supportsHalfDuplexBidiOverHTTP1` has been explicitly set.
  var hasSupportsHalfDuplexBidiOverHTTP1: Bool {return self._supportsHalfDuplexBidiOverHTTP1 != nil}
  /// Clears the value of `supportsHalfDuplexBidiOverHTTP1`. Subsequent reads from it will return its default value.
  mutating func clearSupportsHalfDuplexBidiOverHTTP1() {self._supportsHalfDuplexBidiOverHTTP1 = nil}

  /// Whether Connect via GET is supported.
  /// If absent, true is assumed.
  var supportsConnectGet: Bool {
    get {return _supportsConnectGet ?? false}
    set {_supportsConnectGet = newValue}
  }
  /// Returns true if `supportsConnectGet` has been explicitly set.
  var hasSupportsConnectGet: Bool {return self._supportsConnectGet != nil}
  /// Clears the value of `supportsConnectGet`. Subsequent reads from it will return its default value.
  mutating func clearSupportsConnectGet() {self._supportsConnectGet = nil}

  /// Whether a message receive limit is supported.
  /// If absent, true is assumed.
  var supportsMessageReceiveLimit: Bool {
    get {return _supportsMessageReceiveLimit ?? false}
    set {_supportsMessageReceiveLimit = newValue}
  }
  /// Returns true if `supportsMessageReceiveLimit` has been explicitly set.
  var hasSupportsMessageReceiveLimit: Bool {return self._supportsMessageReceiveLimit != nil}
  /// Clears the value of `supportsMessageReceiveLimit`. Subsequent reads from it will return its default value.
  mutating func clearSupportsMessageReceiveLimit() {self._supportsMessageReceiveLimit = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _supportsH2C: Bool? = nil
  fileprivate var _supportsTls: Bool? = nil
  fileprivate var _supportsTlsClientCerts: Bool? = nil
  fileprivate var _supportsTrailers: Bool? = nil
  fileprivate var _supportsHalfDuplexBidiOverHTTP1: Bool? = nil
  fileprivate var _supportsConnectGet: Bool? = nil
  fileprivate var _supportsMessageReceiveLimit: Bool? = nil
}

/// ConfigCase represents a single resolved configuration case. When tests are
/// run, the Config and the supported features therein are used to compute all
/// of the cases relevant to the implementation under test. These configuration
/// cases are then used to select which test cases are applicable.
struct Connectrpc_Conformance_V1_ConfigCase: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// If unspecified, indicates cases for all versions.
  var version: Connectrpc_Conformance_V1_HTTPVersion = .unspecified

  /// If unspecified, indicates cases for all protocols.
  var `protocol`: Connectrpc_Conformance_V1_Protocol = .unspecified

  /// If unspecified, indicates cases for all codecs.
  var codec: Connectrpc_Conformance_V1_Codec = .unspecified

  /// If unspecified, indicates cases for all compression algorithms.
  var compression: Connectrpc_Conformance_V1_Compression = .unspecified

  /// If unspecified, indicates cases for all stream types.
  var streamType: Connectrpc_Conformance_V1_StreamType = .unspecified

  /// If absent, indicates cases for plaintext (no TLS) but also for
  /// TLS if features indicate that TLS is supported.
  var useTls: Bool {
    get {return _useTls ?? false}
    set {_useTls = newValue}
  }
  /// Returns true if `useTls` has been explicitly set.
  var hasUseTls: Bool {return self._useTls != nil}
  /// Clears the value of `useTls`. Subsequent reads from it will return its default value.
  mutating func clearUseTls() {self._useTls = nil}

  /// If absent, indicates cases without client certs but also cases
  /// that use client certs if features indicate they are supported.
  var useTlsClientCerts: Bool {
    get {return _useTlsClientCerts ?? false}
    set {_useTlsClientCerts = newValue}
  }
  /// Returns true if `useTlsClientCerts` has been explicitly set.
  var hasUseTlsClientCerts: Bool {return self._useTlsClientCerts != nil}
  /// Clears the value of `useTlsClientCerts`. Subsequent reads from it will return its default value.
  mutating func clearUseTlsClientCerts() {self._useTlsClientCerts = nil}

  /// If absent, indicates cases that do not test message receive
  /// limits but also cases that do test message receive limits if
  /// features indicate they are supported.
  var useMessageReceiveLimit: Bool {
    get {return _useMessageReceiveLimit ?? false}
    set {_useMessageReceiveLimit = newValue}
  }
  /// Returns true if `useMessageReceiveLimit` has been explicitly set.
  var hasUseMessageReceiveLimit: Bool {return self._useMessageReceiveLimit != nil}
  /// Clears the value of `useMessageReceiveLimit`. Subsequent reads from it will return its default value.
  mutating func clearUseMessageReceiveLimit() {self._useMessageReceiveLimit = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _useTls: Bool? = nil
  fileprivate var _useTlsClientCerts: Bool? = nil
  fileprivate var _useMessageReceiveLimit: Bool? = nil
}

/// TLSCreds represents credentials for TLS. It includes both a
/// certificate and corresponding private key. Both are encoded
/// in PEM format.
struct Connectrpc_Conformance_V1_TLSCreds: @unchecked Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var cert: Data = Data()

  var key: Data = Data()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "connectrpc.conformance.v1"

extension Connectrpc_Conformance_V1_HTTPVersion: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "HTTP_VERSION_UNSPECIFIED"),
    1: .same(proto: "HTTP_VERSION_1"),
    2: .same(proto: "HTTP_VERSION_2"),
    3: .same(proto: "HTTP_VERSION_3"),
  ]
}

extension Connectrpc_Conformance_V1_Protocol: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "PROTOCOL_UNSPECIFIED"),
    1: .same(proto: "PROTOCOL_CONNECT"),
    2: .same(proto: "PROTOCOL_GRPC"),
    3: .same(proto: "PROTOCOL_GRPC_WEB"),
  ]
}

extension Connectrpc_Conformance_V1_Codec: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "CODEC_UNSPECIFIED"),
    1: .same(proto: "CODEC_PROTO"),
    2: .same(proto: "CODEC_JSON"),
    3: .same(proto: "CODEC_TEXT"),
  ]
}

extension Connectrpc_Conformance_V1_Compression: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "COMPRESSION_UNSPECIFIED"),
    1: .same(proto: "COMPRESSION_IDENTITY"),
    2: .same(proto: "COMPRESSION_GZIP"),
    3: .same(proto: "COMPRESSION_BR"),
    4: .same(proto: "COMPRESSION_ZSTD"),
    5: .same(proto: "COMPRESSION_DEFLATE"),
    6: .same(proto: "COMPRESSION_SNAPPY"),
  ]
}

extension Connectrpc_Conformance_V1_StreamType: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "STREAM_TYPE_UNSPECIFIED"),
    1: .same(proto: "STREAM_TYPE_UNARY"),
    2: .same(proto: "STREAM_TYPE_CLIENT_STREAM"),
    3: .same(proto: "STREAM_TYPE_SERVER_STREAM"),
    4: .same(proto: "STREAM_TYPE_HALF_DUPLEX_BIDI_STREAM"),
    5: .same(proto: "STREAM_TYPE_FULL_DUPLEX_BIDI_STREAM"),
  ]
}

extension Connectrpc_Conformance_V1_Code: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "CODE_UNSPECIFIED"),
    1: .same(proto: "CODE_CANCELED"),
    2: .same(proto: "CODE_UNKNOWN"),
    3: .same(proto: "CODE_INVALID_ARGUMENT"),
    4: .same(proto: "CODE_DEADLINE_EXCEEDED"),
    5: .same(proto: "CODE_NOT_FOUND"),
    6: .same(proto: "CODE_ALREADY_EXISTS"),
    7: .same(proto: "CODE_PERMISSION_DENIED"),
    8: .same(proto: "CODE_RESOURCE_EXHAUSTED"),
    9: .same(proto: "CODE_FAILED_PRECONDITION"),
    10: .same(proto: "CODE_ABORTED"),
    11: .same(proto: "CODE_OUT_OF_RANGE"),
    12: .same(proto: "CODE_UNIMPLEMENTED"),
    13: .same(proto: "CODE_INTERNAL"),
    14: .same(proto: "CODE_UNAVAILABLE"),
    15: .same(proto: "CODE_DATA_LOSS"),
    16: .same(proto: "CODE_UNAUTHENTICATED"),
  ]
}

extension Connectrpc_Conformance_V1_Config: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Config"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "features"),
    2: .standard(proto: "include_cases"),
    3: .standard(proto: "exclude_cases"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._features) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.includeCases) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.excludeCases) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._features {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.includeCases.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.includeCases, fieldNumber: 2)
    }
    if !self.excludeCases.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.excludeCases, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Connectrpc_Conformance_V1_Config, rhs: Connectrpc_Conformance_V1_Config) -> Bool {
    if lhs._features != rhs._features {return false}
    if lhs.includeCases != rhs.includeCases {return false}
    if lhs.excludeCases != rhs.excludeCases {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Connectrpc_Conformance_V1_Features: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Features"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "versions"),
    2: .same(proto: "protocols"),
    3: .same(proto: "codecs"),
    4: .same(proto: "compressions"),
    5: .standard(proto: "stream_types"),
    6: .standard(proto: "supports_h2c"),
    7: .standard(proto: "supports_tls"),
    8: .standard(proto: "supports_tls_client_certs"),
    9: .standard(proto: "supports_trailers"),
    10: .standard(proto: "supports_half_duplex_bidi_over_http1"),
    11: .standard(proto: "supports_connect_get"),
    12: .standard(proto: "supports_message_receive_limit"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedEnumField(value: &self.versions) }()
      case 2: try { try decoder.decodeRepeatedEnumField(value: &self.protocols) }()
      case 3: try { try decoder.decodeRepeatedEnumField(value: &self.codecs) }()
      case 4: try { try decoder.decodeRepeatedEnumField(value: &self.compressions) }()
      case 5: try { try decoder.decodeRepeatedEnumField(value: &self.streamTypes) }()
      case 6: try { try decoder.decodeSingularBoolField(value: &self._supportsH2C) }()
      case 7: try { try decoder.decodeSingularBoolField(value: &self._supportsTls) }()
      case 8: try { try decoder.decodeSingularBoolField(value: &self._supportsTlsClientCerts) }()
      case 9: try { try decoder.decodeSingularBoolField(value: &self._supportsTrailers) }()
      case 10: try { try decoder.decodeSingularBoolField(value: &self._supportsHalfDuplexBidiOverHTTP1) }()
      case 11: try { try decoder.decodeSingularBoolField(value: &self._supportsConnectGet) }()
      case 12: try { try decoder.decodeSingularBoolField(value: &self._supportsMessageReceiveLimit) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.versions.isEmpty {
      try visitor.visitPackedEnumField(value: self.versions, fieldNumber: 1)
    }
    if !self.protocols.isEmpty {
      try visitor.visitPackedEnumField(value: self.protocols, fieldNumber: 2)
    }
    if !self.codecs.isEmpty {
      try visitor.visitPackedEnumField(value: self.codecs, fieldNumber: 3)
    }
    if !self.compressions.isEmpty {
      try visitor.visitPackedEnumField(value: self.compressions, fieldNumber: 4)
    }
    if !self.streamTypes.isEmpty {
      try visitor.visitPackedEnumField(value: self.streamTypes, fieldNumber: 5)
    }
    try { if let v = self._supportsH2C {
      try visitor.visitSingularBoolField(value: v, fieldNumber: 6)
    } }()
    try { if let v = self._supportsTls {
      try visitor.visitSingularBoolField(value: v, fieldNumber: 7)
    } }()
    try { if let v = self._supportsTlsClientCerts {
      try visitor.visitSingularBoolField(value: v, fieldNumber: 8)
    } }()
    try { if let v = self._supportsTrailers {
      try visitor.visitSingularBoolField(value: v, fieldNumber: 9)
    } }()
    try { if let v = self._supportsHalfDuplexBidiOverHTTP1 {
      try visitor.visitSingularBoolField(value: v, fieldNumber: 10)
    } }()
    try { if let v = self._supportsConnectGet {
      try visitor.visitSingularBoolField(value: v, fieldNumber: 11)
    } }()
    try { if let v = self._supportsMessageReceiveLimit {
      try visitor.visitSingularBoolField(value: v, fieldNumber: 12)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Connectrpc_Conformance_V1_Features, rhs: Connectrpc_Conformance_V1_Features) -> Bool {
    if lhs.versions != rhs.versions {return false}
    if lhs.protocols != rhs.protocols {return false}
    if lhs.codecs != rhs.codecs {return false}
    if lhs.compressions != rhs.compressions {return false}
    if lhs.streamTypes != rhs.streamTypes {return false}
    if lhs._supportsH2C != rhs._supportsH2C {return false}
    if lhs._supportsTls != rhs._supportsTls {return false}
    if lhs._supportsTlsClientCerts != rhs._supportsTlsClientCerts {return false}
    if lhs._supportsTrailers != rhs._supportsTrailers {return false}
    if lhs._supportsHalfDuplexBidiOverHTTP1 != rhs._supportsHalfDuplexBidiOverHTTP1 {return false}
    if lhs._supportsConnectGet != rhs._supportsConnectGet {return false}
    if lhs._supportsMessageReceiveLimit != rhs._supportsMessageReceiveLimit {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Connectrpc_Conformance_V1_ConfigCase: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ConfigCase"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "version"),
    2: .same(proto: "protocol"),
    3: .same(proto: "codec"),
    4: .same(proto: "compression"),
    5: .standard(proto: "stream_type"),
    6: .standard(proto: "use_tls"),
    7: .standard(proto: "use_tls_client_certs"),
    8: .standard(proto: "use_message_receive_limit"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.version) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.`protocol`) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.codec) }()
      case 4: try { try decoder.decodeSingularEnumField(value: &self.compression) }()
      case 5: try { try decoder.decodeSingularEnumField(value: &self.streamType) }()
      case 6: try { try decoder.decodeSingularBoolField(value: &self._useTls) }()
      case 7: try { try decoder.decodeSingularBoolField(value: &self._useTlsClientCerts) }()
      case 8: try { try decoder.decodeSingularBoolField(value: &self._useMessageReceiveLimit) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.version != .unspecified {
      try visitor.visitSingularEnumField(value: self.version, fieldNumber: 1)
    }
    if self.`protocol` != .unspecified {
      try visitor.visitSingularEnumField(value: self.`protocol`, fieldNumber: 2)
    }
    if self.codec != .unspecified {
      try visitor.visitSingularEnumField(value: self.codec, fieldNumber: 3)
    }
    if self.compression != .unspecified {
      try visitor.visitSingularEnumField(value: self.compression, fieldNumber: 4)
    }
    if self.streamType != .unspecified {
      try visitor.visitSingularEnumField(value: self.streamType, fieldNumber: 5)
    }
    try { if let v = self._useTls {
      try visitor.visitSingularBoolField(value: v, fieldNumber: 6)
    } }()
    try { if let v = self._useTlsClientCerts {
      try visitor.visitSingularBoolField(value: v, fieldNumber: 7)
    } }()
    try { if let v = self._useMessageReceiveLimit {
      try visitor.visitSingularBoolField(value: v, fieldNumber: 8)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Connectrpc_Conformance_V1_ConfigCase, rhs: Connectrpc_Conformance_V1_ConfigCase) -> Bool {
    if lhs.version != rhs.version {return false}
    if lhs.`protocol` != rhs.`protocol` {return false}
    if lhs.codec != rhs.codec {return false}
    if lhs.compression != rhs.compression {return false}
    if lhs.streamType != rhs.streamType {return false}
    if lhs._useTls != rhs._useTls {return false}
    if lhs._useTlsClientCerts != rhs._useTlsClientCerts {return false}
    if lhs._useMessageReceiveLimit != rhs._useMessageReceiveLimit {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Connectrpc_Conformance_V1_TLSCreds: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TLSCreds"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "cert"),
    2: .same(proto: "key"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.cert) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.key) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.cert.isEmpty {
      try visitor.visitSingularBytesField(value: self.cert, fieldNumber: 1)
    }
    if !self.key.isEmpty {
      try visitor.visitSingularBytesField(value: self.key, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Connectrpc_Conformance_V1_TLSCreds, rhs: Connectrpc_Conformance_V1_TLSCreds) -> Bool {
    if lhs.cert != rhs.cert {return false}
    if lhs.key != rhs.key {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
