//
//  PostersData.swift
//  appdev
//
//  Created by алина on 21.05.2024.

import Foundation
struct PostersData: Identifiable{
    let UserName: String
    let ImageName: String
    let rating: String
    let id = UUID()
// dataset for the posters of the movie with the rating 
    static func examples() -> [PostersData] {
        [PostersData(UserName: "415hw4ry4",
                      ImageName: "tasteofcherry",
                     rating: "★★★☆☆"),
         PostersData(UserName: "alinayagaf",
                       ImageName: "buffalo",
                     rating: "★★★★☆"),
         PostersData(UserName: "kibbie",
                       ImageName: "holdovers",
                     rating: "★★★★★"),
         PostersData(UserName: "CylindricalAdi",
                       ImageName: "irmavep",
                     rating: "★★★☆☆"),]
    }
}



