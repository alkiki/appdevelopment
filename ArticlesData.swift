//
//  articles.data.swift
//  appdev
//
//  Created by алина on 21.05.2024.
//

import Foundation
struct ArticlesData: Identifiable{
    let name: String
    let ImageName: String
    let id = UUID()
    
//dataset for the articles 
    static func examples() -> [ArticlesData] {
        [ArticlesData(name: "Ways of Worldmaking: Hong Sang-soo’s Late Period",
                      ImageName: "article1"),
         ArticlesData(name: "Related Images | “Lemon Tree”",
                       ImageName: "article2"),
         ArticlesData(name: "Movie Poster of the Week | The Posters of Eiko Ishioka and Haruo Takino",
                       ImageName: "article3"),
         ArticlesData(name: "Brooding and “The Beast”",
                       ImageName: "article4"),]
    }
}
