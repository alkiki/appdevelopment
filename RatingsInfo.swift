//
//  ratingsinfo.swift
//  devappfilm
//
//  Created by алина on 22.05.2024.
//

import Foundation
import SwiftUI
import Charts


//layout of the ratings statistics of the chosen film
struct RatingsInfo: View{
    var body: some View{
        Chart{
            BarMark(x: .value("Type", "★★★★★"),
                    y: .value("users", 31200))
            .foregroundStyle(.indigo)
            .annotation(position: .top){
                Text("31,2k")
            }
            BarMark(x: .value("Type", "★★★★☆"),
                    y: .value("users", 30800))
            .annotation(position: .top){
                Text("30,8k")
            }
            .foregroundStyle(.indigo)
            BarMark(x: .value("Type", "★★★☆☆"),
                    y: .value("users", 6300))
            .annotation(position: .top){
                Text("6,3k")
            }
            .foregroundStyle(.indigo)
            BarMark(x: .value("Type", "★★☆☆☆"),
                    y: .value("users", 1200))
            .annotation(position: .top){
                Text("1,2k")
            }
            .foregroundStyle(.indigo)
            BarMark(x: .value("Type", "★☆☆☆☆"),
                    y: .value("users", 404))
            .annotation(position: .top){
                Text("404")
            } 
            .foregroundStyle(.indigo)
        }
        .chartLegend(.hidden)
        .chartYAxis(.hidden)
        .frame(height: 70)
        .aspectRatio(1, contentMode: .fit)
        .padding()
    }
}


#Preview{
    RatingsInfo()
}
