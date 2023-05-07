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
        HStack {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text("MOVIE YEAR")
            Text("Rating")
            Text("Seasons")
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}
