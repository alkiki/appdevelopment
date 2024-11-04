//
//  followersData.swift
//  devappfilm
//
//  Created by алина on 09.06.2024.
//

import Foundation
import Foundation
struct followersData: Identifiable{
    let ImageName: String
    let UserName: String
    let id = UUID()
    
    
//dataset to store the user's ratings of the films
    static func examples() -> [followersData] {
        [followersData(ImageName: "aishu",
                     UserName: "415hw4ry4"),
         followersData(ImageName: "hanna",
                       UserName: "kibbie"),
         followersData(ImageName: "aditya",
                     UserName: "CylindricalAdi"),
         followersData(ImageName: "bladerunner",
                     UserName: "patrick"),]
    }
}
