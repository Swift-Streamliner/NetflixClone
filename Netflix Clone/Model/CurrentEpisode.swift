//
//  CurrentEpisodeInfo.swift
//  Netflix Clone
//
//  Created by MEI on 09.05.2023.
//

import Foundation

struct CurrentEpisode: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}
