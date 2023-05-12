//
//  Trailer.swift
//  Netflix Clone
//
//  Created by MEI on 12.05.2023.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
