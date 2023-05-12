//
//  Movie.swift
//  Netflix Clone
//
//  Created by MEI on 01.05.2023.
//

import Foundation

struct Movie : Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
    
    // MovieDetail view
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    // Personalization
    var currentEpisode: CurrentEpisode?
    var defaultEpisode: CurrentEpisode
    var creators: String
    var cast: String
    
    var moreLikeThisMovies: [Movie]
    var episodes: [Episode]?
    var promotionHeadline: String?
    
    var trailers: [Trailer]
    
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        return ""
    }
    
    var episodeInfoDisplay: String {
        if let current = currentEpisode {
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        } else {
            return "S\(defaultEpisode.season):E\(defaultEpisode.episode) \(defaultEpisode.episodeName)"
        }
    }
    
    var episodeDiscriptionDisplay : String {
        if let current = currentEpisode {
            return current.description
        } else {
            return defaultEpisode.description
        }
    }
    
    
}
