//
//  GlobalHelpers.swift
//  Netflix Clone
//
//  Created by MEI on 01.05.2023.
//

import Foundation
import SwiftUI

let exampleVideoURL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!

let exampleImageURL1 = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/105")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/106")!

var randomExampleImageURL: URL {
    return [exampleImageURL1, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL1
}

// Trailer
let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer2 = Trailer(name: "The Hero's Journey", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer3 = Trailer(name: "The Mysterious", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
// Trailers
let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]
// Movie
let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisode: exampleCurrentEpisode1,
    creators: "Barah bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: exampleMovies,
    episodes: exampleEpisodes,
    promotionHeadline: "Watch Season 1 Now",
    trailers: exampleTrailers)

let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Travelers",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2021,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisode: exampleCurrentEpisode1,
    creators: "Barah bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)

let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2022,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisode: exampleCurrentEpisode1,
    creators: "Barah bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    episodes: exampleEpisodes,
    promotionHeadline: "New Episodes Coming Soon",
    trailers: exampleTrailers)

let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2023,
    rating: "TV-MA",
    defaultEpisode: exampleCurrentEpisode1,
    creators: "Barah bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)

let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2019, rating: "TV-MA",
    defaultEpisode: exampleCurrentEpisode1,
    creators: "Barah bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)

let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2022,
    rating: "TV-MA",
    defaultEpisode: exampleCurrentEpisode1,
    creators: "Barah bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)

let exampleMovie7 = Movie(
    id: UUID().uuidString,
    name: "After Dark",
    thumbnailURL: URL(string: "https://picsum.photos/200/306")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2011,
    rating: "TV-MA",
    defaultEpisode: exampleCurrentEpisode1,
    creators: "Tom Cruise",
    cast: "Tom Cruise",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)
// Movies
var exampleMovies: [Movie] {
    return [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7].shuffled()
}
// Episode
let exampleCurrentEpisode1 = CurrentEpisode(
    episodeName: "Bringing the Ending",
    description: "Six months after the disappearances the police from a task for. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
    season: 2,
    episode: 1)

let exampleEpisode1 = Episode(
    name: "Bringing the Ending",
    season: 1,
    episodeNumber: 1,
    thumbnailImageURLString: "https://picsum.photos/300/102",
    description: "Six months after the disappearances the police from a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
    length: 53,
    videoURL: exampleVideoURL)

let exampleEpisode2 = Episode(
    name: "Bringing the Ending",
    season: 1,
    episodeNumber: 2,
    thumbnailImageURLString: "https://picsum.photos/300/103",
    description: "Clausen and Charlotte interview Regina. The stranger takes Hannah to 1987, where Claudia has unnerving enconter and Egon visits an old nemesis.",
    length: 54,
    videoURL: exampleVideoURL)

let exampleEpisode3 = Episode(
    name: "Ghost",
    season: 1,
    episodeNumber: 3,
    thumbnailImageURLString: "https://picsum.photos/300/104",
    description: "In 1954, a missing Helge returns, but he'll only speak to Noah. In 1987, Claudia brings the time machine to Tannhaus, and Egon questions Ulrich again.",
    length: 56,
    videoURL: exampleVideoURL)

let exampleEpisode4 = Episode(
    name: "Bringing the Ending Back",
    season: 2,
    episodeNumber: 1,
    thumbnailImageURLString: "https://picsum.photos/300/105",
    description: "Six months after the disappearances the police from a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
    length: 53,
    videoURL: exampleVideoURL)

let exampleEpisode5 = Episode(
    name: "Bringing the Ending Back",
    season: 2,
    episodeNumber: 2,
    thumbnailImageURLString: "https://picsum.photos/300/106",
    description: "Clausen and Charlotte interview Regina. The stranger takes Hannah to 1987, where Claudia has unnerving enconter and Egon visits an old nemesis.",
    length: 54,
    videoURL: exampleVideoURL)

let exampleEpisode6 = Episode(
    name: "Ghost Back",
    season: 3,
    episodeNumber: 3,
    thumbnailImageURLString: "https://picsum.photos/300/107",
    description: "In 1954, a missing Helge returns, but he'll only speak to Noah. In 1987, Claudia brings the time machine to Tannhaus, and Egon questions Ulrich again.",
    length: 56,
    videoURL: exampleVideoURL)
// Episodes
let exampleEpisodes = [exampleEpisode1, exampleEpisode2, exampleEpisode3, exampleEpisode4, exampleEpisode5, exampleEpisode6]

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [.black.opacity(0.0), .black.opacity(0.95)]),
        startPoint: .top, endPoint: .bottom
    )
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
