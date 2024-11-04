//
//  PodcastData.swift
//  devappfilm
//
//  Created by алина on 08.06.2024.
//

import Foundation

struct PodcastData: Identifiable {
    let ImageName: String
    let title: String
    let url: URL
    let id = UUID()
    
//dataset for the podcast section in the homepage
    static func examples() -> [PodcastData] {
        [PodcastData(ImageName: "podcast", title: "There is no crying in baseball, but it's okay to cry at A League of Their Own", url: URL(string: "https://podcasts.apple.com/ru/podcast/theres-no-crying-in-baseball-but-its-okay-to-cry-at/id1462177511?i=1000488339043&l=en-GB")!),
         PodcastData(ImageName: "podcast2", title: "Extreme Personalities with Emma Stone & Julio Torres", url: URL(string: "https://podcasts.apple.com/ru/podcast/extreme-personalities-with-emma-stone-julio-torres/id1351044991?i=1000648220948&l=en-GB")!)]
    }
}
