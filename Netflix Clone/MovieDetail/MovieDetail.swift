//
//  MovieDetail.swift
//  Netflix Clone
//
//  Created by MEI on 06.05.2023.
//

import SwiftUI

struct MovieDetail : View {
    var movie: Movie
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    })
                }
                .padding(.horizontal, 22)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        StandartHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        
                        MovieInfoSubheadline(movie: movie)
                        if (movie.promotionHeadline != nil) {
                            Text(movie.promotionHeadline!)
                                .bold()
                                .font(.headline)
                        }
                        
                        PlayButton(text: "Play", imageName: "play.fill", backgroundColor: .red) {
                            
                        }
                        
                        CurrentEpisodeInfo(movie: movie)
                        
                        CastInfo(movie: movie)
                    }
                }
                .padding(.horizontal, 10)
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct MovieDetail_Preview : PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie1)
    }
}
