//
//  EpisodesView.swift
//  Netflix Clone
//
//  Created by MEI on 13.05.2023.
//

import SwiftUI
import Kingfisher

struct EpisodesView: View {
    var episodes: [Episode]
    
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    func getEpisode(forSeason season: Int) -> [Episode] {
        return episodes.filter({$0.season == season})
    }
    
    var body: some View {
        VStack(spacing: 14) {
            // Season Picker
            HStack {
                Button(action: {
                    showSeasonPicker = true
                }, label: {
                    Group {
                        Text("Season 1")
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 16))
                })
                Spacer()
            }
            // Episodes List
            ForEach(getEpisode(forSeason: selectedSeason)) { episode in
                VStack(alignment: .leading) {
                    EpisodeItemPreview(episode: episode)
                    EpisodeItemDescription(description: episode.description)
                }
                .padding(.bottom, 10)
            }
            Spacer()
        }
        .foregroundColor(.white)
        .padding(.horizontal, 20)
    }
}

struct EpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            EpisodesView(episodes: exampleEpisodes, showSeasonPicker: .constant(false), selectedSeason: .constant(1))
        }
    }
}
