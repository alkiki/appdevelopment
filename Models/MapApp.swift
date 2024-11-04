//
//  MapApp.swift
//  devappfilm
//
//  Created by алина on 25.05.2024.
//

import Foundation
import SwiftUI

struct MapApp: App{
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene{
        WindowGroup{
            LocationsView()
                .environmentObject(vm)
        }
    }
    
}

