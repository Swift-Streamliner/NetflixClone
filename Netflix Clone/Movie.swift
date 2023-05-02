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
}
