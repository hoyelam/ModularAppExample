//
//  ContentView.swift
//  ModularAppExample
//
//  Created by Hoye Lam on 04/09/2022.
//

import SwiftUI
import ChuckNorrisAPI

struct ContentView: View {
    @State var jokes: [String] = []
    
    private let apiClient = ChuckNorrisAPI()
    
    private func getJoke() {
        Task {
            let joke = try await apiClient.getChuckNorrisJoke()
            self.jokes.insert(joke, at: 0)
        }
    }
    
    var body: some View {
        NavigationView {
            List(jokes, id: \.self) { joke in
                Text("\(joke)")
            }
            .navigationTitle("Chuck Norris Jokes")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Get new joke") {
                        self.getJoke()
                    }
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Clear") {
                        self.jokes.removeAll()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(jokes: ["hello world", "hello world"])
    }
}
