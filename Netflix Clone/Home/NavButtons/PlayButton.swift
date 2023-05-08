//
//  WhiteButton.swift
//  Netflix Clone
//
//  Created by MEI on 04.05.2023.
//

import SwiftUI

struct PlayButton : View {
    var text: String
    var imageName: String
    var backgroundColor: Color = Color.white
    
    var action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            HStack {
                Spacer()
                Image(systemName: imageName)
                Text(text)
                    .bold()
                    .font(.system(size: 16))
                Spacer()
            }
            .padding(.vertical, 6)
            .foregroundColor(backgroundColor == .white ? .black : .white)
            .background(backgroundColor)
            .cornerRadius(3.0)
        })
    }
}

struct WhiteButton_Preview: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            PlayButton(text: "Play", imageName: "play.fill") {
                print("Tapped")
            }
        }
    }
}
