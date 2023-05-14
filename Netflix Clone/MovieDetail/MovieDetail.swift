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
    
    @State private var showSeasonPicker = false
    @State private var selectedSeason = 1
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ZStack {
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
                                .padding(.vertical, 4)
                            
                            HStack(spacing: 60) {
                                SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                                    
                                }
                                SmallVerticalButton(text: "Rate", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup", isOn: false) {
                                    
                                }
                                SmallVerticalButton(text: "Share", isOnImage: "square.and.arrow.up", isOffImage: "square.and.arrow.up", isOn: true) {
                                    
                                }
                                Spacer()
                            }
                            .padding(.leading, 20)
                            
                            CustomTabSwitcher(tabs: [.episodes, .trailers, .more], movie: movie)
                        }
                    }
                    .padding(.horizontal, 10)
                    Spacer()
                }
                .foregroundColor(.white)
                
                if showSeasonPicker {
                    SeasonPickerView(numberOfSeasons: movie.numberOfSeasons ?? 0, showSeasonPicker: $showSeasonPicker, selectedSeason: $selectedSeason)
                }
            }
        }
    }
}

struct MovieDetail_Preview : PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie3)
    }
}
