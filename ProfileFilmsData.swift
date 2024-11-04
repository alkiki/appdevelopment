//
//  ProfileFilmsData.swift
//  devappfilm
//
//  Created by алина on 09.06.2024.
//

import Foundation
struct ProfileFilmsData: Identifiable{
    let ImageName: String
    let rating: String
    let id = UUID()
    
    
//dataset of the logged films with ratings 
    static func examples() -> [ProfileFilmsData] {
        [ProfileFilmsData(ImageName: "tasteofcherry",
                     rating: "★★★☆☆"),
         ProfileFilmsData(ImageName: "challengers",
                     rating: "★★★★☆"),
         ProfileFilmsData(ImageName: "holdovers",
                     rating: "★★★★★"),
         ProfileFilmsData(ImageName: "irmavep",
                     rating: "★★★☆☆"),]
    }
}
