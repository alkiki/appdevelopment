//
//  eventsData.swift
//  devappfilm
//
//  Created by алина on 09.06.2024.
//

import Foundation
struct eventsData: Identifiable{
    let ImageName: String
    let UserName: String
    let id = UUID()
    
    static func examples() -> [eventsData] {
        [eventsData(ImageName: "quiz",
                     UserName: "Movies Film Quiz"),
         eventsData(ImageName: "mysterymovie",
                       UserName: "Mystery Movie Marathon"),
        ]
    }
}
