//
//  VideoPreviewImage.swift
//  Netflix Clone
//
//  Created by MEI on 12.05.2023.
//

import SwiftUI
import Kingfisher

struct VideoPreviewImage: View {
    var imageURL: URL
    var videoURL: URL
    
    @State private var showingVideoPlayer = false
    
    var body: some View {
        ZStack {
            KFImage(imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            Button(action: {
                showingVideoPlayer = true
            }, label: {
                Image(systemName: "play.circle")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
            })
            .sheet(isPresented: $showingVideoPlayer) {
                VideoView(url: videoURL)
            }
        }
    }
}

struct VideoPreviewImage_Previews: PreviewProvider {
    static var previews: some View {
        VideoPreviewImage(imageURL: exampleImageURL1, videoURL: exampleVideoURL)
    }
}
