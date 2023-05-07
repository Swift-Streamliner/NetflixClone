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
    var episodes: [Episode]?
    var promotionHeadline: String?
    
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
    
    
}
