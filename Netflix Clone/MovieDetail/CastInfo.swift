//
//  CastInfo.swift
//  Netflix Clone
//
//  Created by MEI on 09.05.2023.
//

import SwiftUI

struct CastInfo: View {
    var movie: Movie
    
    var body: some View {
        VStack (spacing: 3) {
            HStack {
                Text("Cast: \(movie.cast)")
                Spacer()
            }
            HStack {
                Text("Creators: \(movie.creators)")
                Spacer()
            }
        }
        .font(.caption)
        .foregroundColor(.gray)
    }
}

struct CastInfo_Preview : PreviewProvider {
    static var previews: some View {
        CastInfo(movie: exampleMovie1)
    }
}
