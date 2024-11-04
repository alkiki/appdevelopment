//
//  PostersDataRowView.swift
//  appdev
//
//  Created by алина on 21.05.2024.
//

import Foundation
import SwiftUI

//layout of the posters view 
struct PostersDataRowView: View {
    let poster: PostersData
    var body: some View {
        VStack(alignment: .center, spacing: 5) { 
            NavigationLink(destination: File2()) {
                Image(poster.ImageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 150)
                    .padding(.horizontal, 1)
            }
            HStack {
                Text(poster.UserName)
                    .font(.caption)
                    .foregroundColor(.gray)
                Text(poster.rating)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
        .padding(.vertical, 1)
    }
}


struct PostersDataRowView_Previews: PreviewProvider{
    static var previews: some View{
        VStack(alignment: .leading){
            PostersDataRowView(poster: PostersData.examples()[1])
        }
    }
}
