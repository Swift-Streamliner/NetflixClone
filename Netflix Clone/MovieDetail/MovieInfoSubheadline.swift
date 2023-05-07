//
//  MovieInfoSubheadline.swift
//  Netflix Clone
//
//  Created by MEI on 07.05.2023.
//

import SwiftUI

struct MovieInfoSubheadline : View {
    let movie: Movie
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text(String(movie.year))
            RatingView(rating: movie.rating)
            Text(movie.numberOfSeasonsDisplay)
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct MovieInfoSubheadline_Preview : PreviewProvider {
    static var previews: some View {
        MovieInfoSubheadline(movie: exampleMovie1)
    }
}
