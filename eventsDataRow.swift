//
//  eventsDataRow.swift
//  devappfilm
//
//  Created by алина on 09.06.2024.
//
import Foundation
import SwiftUI


//layout to show the event the user is attending 
struct eventsDataRow: View {
    let event: eventsData
    var body: some View {
        VStack(alignment: .center, spacing: 5) { 
            NavigationLink(destination: MysteryMovie()) {
                Image(event.ImageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 120)
                    .padding(.horizontal, 1)
            }
            HStack {
                Text(event.UserName)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
        .padding(.vertical, 1) 
    }
}


struct eventsDataRow_Previews: PreviewProvider{
    static var previews: some View{
        VStack(alignment: .leading){
            eventsDataRow(event: eventsData.examples()[1])
        }
    }
}
