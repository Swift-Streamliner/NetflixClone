//
//  LandingMovie.swift
//  Netflix Clone
//
//  Created by MEI on 02.05.2023.
//

import SwiftUI
import Kingfisher

struct LandingMovie: View {
    var movie: Movie
    
    func isCategoryLast(_ cat: String) -> Bool {
        let catCount = movie.categories.count
        
        if let index = movie.categories.firstIndex(of: cat) {
            if (index + 1) != catCount {
                return false
            }
        }
        return true
    }
    
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            VStack {
                Spacer()
                HStack {
                    ForEach(movie.categories, id: \.self) {category in
                        HStack {
                            Text(category)
                                .font(.footnote)
                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(Color.blue)
                                    .font(.system(size: 3))
                            }
                        }
                    }
                }
                HStack {
                    Spacer()
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        
                    }
                    Spacer()
                    
                    WhiteButton(text: "play", imageName: "play.fill") {
                        
                    }
                        .frame(width: 120)
                    
                    Spacer()
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        
                    }
                    Spacer()
                }
            }
        }
        .foregroundColor(Color.white)
    }
}

struct LandingMovie_Previews : PreviewProvider {
    static var previews: some View {
        LandingMovie(movie: exampleMovie1)
    }
}
