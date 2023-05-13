//
//  EpisodeItemPreview.swift
//  Netflix Clone
//
//  Created by MEI on 13.05.2023.
//

import SwiftUI

struct EpisodeItemPreview: View {
    var episode: Episode
    
    var body: some View {
        HStack {
            VideoPreviewImage(imageURL: episode.videoURL, videoURL: episode.thumbnailURL)
                .frame(width: 120, height: 70)
            
            VStack(alignment: .leading) {
                Text("\(episode.episodeNumber). \(episode.name)")
                    .font(.system(size: 16))
                Text("\(episode.length)m")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
            }
            Spacer()
            Image(systemName: "arrow.down.to.line.alt")
                .font(.system(size: 20))
        }
        .foregroundColor(.white)
    }
}

struct EpisodeItemPreview_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            EpisodeItemPreview(episode: exampleEpisode1)
        }
    }
}
