//
//  HomeVM.swift
//  Netflix Clone
//
//  Created by MEI on 01.05.2023.
//

import Foundation

class HomeVM: ObservableObject {
    // String - category
    @Published var movies: [String: [Movie]] = [:]
    
    public var categories: [String] {
        movies.keys.map({String($0)})
    }
    
    public func getMovie(category: String) -> [Movie] {
        return movies[category] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comedy"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Sci-Fi Movies"] = exampleMovies.shuffled()
    }
}
