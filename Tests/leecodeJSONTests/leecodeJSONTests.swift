import XCTest
@testable import leecodeJSON

final class leecodeJSONTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(leecodeJSON().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
