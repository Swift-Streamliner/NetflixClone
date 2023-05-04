//
//  WhiteButton.swift
//  Netflix Clone
//
//  Created by MEI on 04.05.2023.
//

import SwiftUI

struct WhiteButton : View {
    var text: String
    var imageName: String
    
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
            .foregroundColor(.black)
            .background(.white)
            .cornerRadius(3.0)
        })
    }
}

struct WhiteButton_Preview: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            WhiteButton(text: "Play", imageName: "play.fill") {
                print("Tapped")
            }
        }
    }
}
