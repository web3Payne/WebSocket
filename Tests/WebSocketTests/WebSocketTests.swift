import XCTest
@testable import WebSocket

final class WebSocketTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(WebSocket().text, "Hello, World!")
    }
}
