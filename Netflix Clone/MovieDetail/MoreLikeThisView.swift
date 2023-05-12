//
//  MoreLikeThisView.swift
//  Netflix Clone
//
//  Created by MEI on 12.05.2023.
//

import SwiftUI

struct MoreLikeThisView: View {
    var movies: [Movie]
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(movies) { movie in
                    StandartHomeMovie(movie: movie)
                }
            }
        }
    }
}

struct MoreLikeThisView_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThisView(movies: exampleMovies)
    }
}
