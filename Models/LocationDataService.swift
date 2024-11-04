//
//  LocationDataService.swift
//  devappfilm
//
//  Created by алина on 25.05.2024.
//

import Foundation
import MapKit

class LocationDataService{
    static let locations: [Location] = [
        Location(
            name: "Prince Charles Cinema",
            coordinates: CLLocationCoordinate2D(latitude: 51.5114, longitude: 0.1302),
            link: "https://princecharlescinema.com/"
        )
    ]
}
