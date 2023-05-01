//
//  StandartHomeMovie.swift
//  Netflix Clone
//
//  Created by MEI on 01.05.2023.
//

import SwiftUI
import Kingfisher

struct StandartHomeMovie: View {
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFit()
    }
}

struct StandartHomeMovie_Preview: PreviewProvider {
    static var previews: some View {
        StandartHomeMovie(movie: exampleMovie1)
    }
}
