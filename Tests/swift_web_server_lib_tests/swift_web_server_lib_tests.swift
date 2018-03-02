import XCTest
import CouchDB
@testable import swift_web_server_lib

class swift_web_server_lib_tests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    func testAsserts() {
        XCTAssertEqual(1234, 1234, "Message shown when assert fails")
    }

    static var allTests = [
        ("testAsserts", testAsserts),
    ]
}
