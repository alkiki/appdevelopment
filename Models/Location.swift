//
//  Location.swift
//  devappfilm
//
//  Created by алина on 25.05.2024.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let name: String
//    let cityName: String
    let coordinates: CLLocationCoordinate2D
//    let description: String
//    let imageName: [String]
    let link: String
    
    var id: String{
        name
    }
}
