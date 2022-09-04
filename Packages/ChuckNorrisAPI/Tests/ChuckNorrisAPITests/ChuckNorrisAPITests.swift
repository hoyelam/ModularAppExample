import XCTest
@testable import ChuckNorrisAPI

final class ChuckNorrisAPITests: XCTestCase {
    
    func testChuckNorrisAPIReturnsJoke() async throws {
        // Given
        let apiClient = ChuckNorrisAPI()
        
        // When
        let joke = try await apiClient.getChuckNorrisJoke()
        
        // Then
        XCTAssertNoThrow(joke)
    }
}
