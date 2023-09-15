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

@testable import Connect
import Foundation
import SwiftProtobuf
import XCTest

final class ConnectErrorTests: XCTestCase {
    func testDeserializingFullErrorAndUnpackingDetails() throws {
        let expectedDetails = Connectrpc_Conformance_V1_SimpleResponse.with {
            $0.hostname = "foobar"
        }
        let errorData = try self.errorData(expectedDetails: [expectedDetails])
        let error = try JSONDecoder().decode(ConnectError.self, from: errorData)
        XCTAssertEqual(error.code, .unavailable)
        XCTAssertEqual(error.message, "overloaded: back off and retry")
        XCTAssertNil(error.exception)
        XCTAssertEqual(error.details.count, 1)
        XCTAssertEqual(error.unpackedDetails(), [expectedDetails])
        XCTAssertTrue(error.metadata.isEmpty)
    }
    func testDeserializingFullErrorAndUnpackingDetailsWithUnpaddedBase64() throws {
        let expectedDetails = Connectrpc_Conformance_V1_SimpleResponse.with {
            $0.hostname = "foobar"
        }
        let errorData = try self.errorData(expectedDetails: [expectedDetails], pad: false)
        let error = try JSONDecoder().decode(ConnectError.self, from: errorData)
        XCTAssertEqual(error.code, .unavailable)
        XCTAssertEqual(error.message, "overloaded: back off and retry")
        XCTAssertNil(error.exception)
        XCTAssertEqual(error.details.count, 1)
        XCTAssertEqual(error.unpackedDetails(), [expectedDetails])
        XCTAssertTrue(error.metadata.isEmpty)
    }
    func testDeserializingFullErrorAndUnpackingMultipleDetails() throws {
        let expectedDetails1 = Connectrpc_Conformance_V1_SimpleResponse.with { $0.hostname = "foo" }
        let expectedDetails2 = Connectrpc_Conformance_V1_SimpleResponse.with { $0.hostname = "bar" }
        let errorData = try self.errorData(expectedDetails: [expectedDetails1, expectedDetails2])
        let error = try JSONDecoder().decode(ConnectError.self, from: errorData)
        XCTAssertEqual(error.code, .unavailable)
        XCTAssertEqual(error.message, "overloaded: back off and retry")
        XCTAssertNil(error.exception)
        XCTAssertEqual(error.details.count, 2)
        XCTAssertEqual(error.unpackedDetails(), [expectedDetails1, expectedDetails2])
        XCTAssertTrue(error.metadata.isEmpty)
    }
    func testDeserializingErrorUsingHelperFunctionLowercasesHeaderKeys() throws {
        let expectedDetails = Connectrpc_Conformance_V1_SimpleResponse.with {
            $0.hostname = "foobar"
        }
        let errorData = try self.errorData(expectedDetails: [expectedDetails])
        let error = ConnectError.from(
            code: .aborted,
            headers: [
                "sOmEkEy": ["foo"],
                "otherKey1": ["BAR", "bAz"],
            ],
            source: errorData
        )
        XCTAssertEqual(error.code, .unavailable) // Respects the code from the error body
        XCTAssertEqual(error.message, "overloaded: back off and retry")
        XCTAssertNil(error.exception)
        XCTAssertEqual(error.details.count, 1)
        XCTAssertEqual(error.unpackedDetails(), [expectedDetails])
        XCTAssertEqual(error.metadata, ["somekey": ["foo"], "otherkey1": ["BAR", "bAz"]])
    }

    func testDeserializingSimpleError() throws {
        let errorDictionary = [
            "code": "unavailable",
        ]
        let errorData = try JSONSerialization.data(withJSONObject: errorDictionary)
        let error = try JSONDecoder().decode(ConnectError.self, from: errorData)
        XCTAssertEqual(error.code, .unavailable)
        XCTAssertNil(error.message)
        XCTAssertNil(error.exception)
        XCTAssertTrue(error.details.isEmpty)
        XCTAssertEqual(error.unpackedDetails(), [Connectrpc_Conformance_V1_SimpleResponse]())
        XCTAssertTrue(error.metadata.isEmpty)
    }

    func testDeserializingEmptyDictionaryFails() throws {
        let errorData = try JSONSerialization.data(withJSONObject: [String: Any]())
        XCTAssertThrowsError(try JSONDecoder().decode(ConnectError.self, from: errorData))
    }

    // MARK: - Private

    private func errorData(expectedDetails: [ProtobufMessage], pad: Bool = true) throws -> Data {
        // Example error from https://connectrpc.com/docs/protocol/#error-end-stream
        let dictionary: [String: Any] = [
            "code": "unavailable",
            "message": "overloaded: back off and retry",
            "details": try expectedDetails.map { detail in
                var val = try detail.serializedData().base64EncodedString()
                // If pad is false, then remove all the padding added by the base64EncodedString function
                if !pad {
                    val = val.replacingOccurrences(of: "=", with: "")
                }
                let errDetail = [
                    "type": type(of: detail).protoMessageName,
                    "value": val,
                    "debug": ["retryDelay": "30s"],
                ] as [String: Any]
                return errDetail
            },
        ]
        return try JSONSerialization.data(withJSONObject: dictionary)
    }
}
