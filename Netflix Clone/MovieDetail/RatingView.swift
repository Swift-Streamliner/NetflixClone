//
//  RatingView.swift
//  Netflix Clone
//
//  Created by MEI on 07.05.2023.
//

import SwiftUI

struct RatingView: View {
    var rating: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            Text(rating)
                .foregroundColor(.white)
        }
        .frame(width: 50, height: 20)
        .font(.system(size: 12))
        .bold()
    }
}

struct RatingView_Preview: PreviewProvider {
    static var previews: some View {
        RatingView(rating: "TV-MA")
    }
}
