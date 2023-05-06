//
//  TopRowButtons.swift
//  Netflix Clone
//
//  Created by MEI on 06.05.2023.
//

import SwiftUI

struct TopRowButtons: View {
    var body: some View {
        HStack {
            Button(action: {
                //
            },
                   label: {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            })
            
            Spacer()
            Button(action: {
                //
            },
               label: {
                Text("TV Shows")
            })
            
            Spacer()
            Button(
                action: {
                //
            },
               label: {
                Text("Movies")
            })
            
            Spacer()
            Button(action: {
                //
            },
                   label: {
                Text("My List")
            })
            
        }
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}

struct TopRowButtons_Preview : PreviewProvider {
    static var previews: some View {
        TopRowButtons()
    }
}
