//
//  EpisodeItemDescription.swift
//  Netflix Clone
//
//  Created by MEI on 13.05.2023.
//

import SwiftUI

struct EpisodeItemDescription: View {
    var description: String
    
    var body: some View {
        Text(description)
            .font(.system(size: 16))
            .lineLimit(3)
    }
}

struct EpisodeItemDescription_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeItemDescription(description: exampleEpisode1.description)
    }
}
