//
//  AishuData.swift
//  devappfilm
//
//  Created by алина on 10.06.2024.
//




import Foundation
import Foundation
import Foundation

//create the dataset to display another user's profile page
struct AishuData: Identifiable{
    let ImageName: String
    let rating: String
    let id = UUID()
    
    static func examples() -> [AishuData] {
        [ AishuData(ImageName: "holdovers",
                     rating: "★★★☆☆"),
          AishuData(ImageName: "irmavep",
                     rating: "★★★★☆"),
          AishuData(ImageName: "haikyuu",
                     rating: "★★★★★")]
    }
}
