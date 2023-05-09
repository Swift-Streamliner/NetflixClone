//
//  CurrentEpisodeInfo.swift
//  Netflix Clone
//
//  Created by MEI on 09.05.2023.
//

import SwiftUI

struct CurrentEpisodeInfo : View {
    var movie: Movie
    var body: some View {
        // Current Episode Info
        // 1. Default
        // 2. Personalized - where the user currently is
        HStack {
            Text(movie.episodeInfoDisplay)
                .bold()
            Spacer()
        }
        .padding(.vertical, 4)
        HStack {
            Text(movie.episodeDiscriptionDisplay)
                .font(.subheadline)
            Spacer()
        }
    }
}

struct CurrentEpisodeInfo_Preview : PreviewProvider {
    static var previews: some View {
        CurrentEpisodeInfo(movie: exampleMovie1)
    }
}
