//
//  ProfileFilms.swift
//  devappfilm
//
//  Created by алина on 09.06.2024.
//

import Foundation
import SwiftUI

//recently watched films by the user 
struct ProfileFilms: View {
    let profilefilm: ProfileFilmsData
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            NavigationLink(destination: FilmInfo()) {
                Image(profilefilm.ImageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 150)
                    .padding(.horizontal, 1)
            }
                Text(profilefilm.rating)
                    .font(.caption)
                    .foregroundColor(.gray)
        }
        .padding(.vertical, 1)
    }
}


struct ProfileFilms_Previews: PreviewProvider{
    static var previews: some View{
        VStack(alignment: .leading){
            ProfileFilms(profilefilm: ProfileFilmsData.examples()[1])
        }
    }
}
