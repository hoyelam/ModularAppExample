import Foundation

protocol ChuckNorrisAPIProviding {
    func getChuckNorrisJoke() async throws -> String
}

public struct ChuckNorrisAPI: ChuckNorrisAPIProviding {
    public init() { }
    
    public func getChuckNorrisJoke() async throws -> String {
        let url = URL(string: "https://api.chucknorris.io/jokes/random")!
        let session = URLSession.shared
        let (data, _) = try await session.data(from: url)
        print(data)
        let decoder = JSONDecoder()
        let joke = try decoder.decode(RandomJokeResponse.self, from: data)
        return joke.value
    }
}
