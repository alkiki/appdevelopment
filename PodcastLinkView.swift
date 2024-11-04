//
//  PodcastLinkView.swift
//  devappfilm
//
//  Created by алина on 08.06.2024.
//

import Foundation

import SwiftUI

struct PodcastLinkView: View {
    let podcast: PodcastData

//layout to show the podcast 
    var body: some View {
        Link(destination: podcast.url) {
            VStack{
                HStack{
                    Image(podcast.ImageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                    VStack{
                        Text(podcast.title)
                            .foregroundColor(.black)

                        Text("The Pod Charles Cinecast")
                            .foregroundColor(.gray)
                        
                        HStack {
                            Image(systemName: "play.circle.fill")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.purple)
                            Text("Play")
                                .font(.title)
                                .foregroundColor(.purple)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        }
                    }
                }
                .padding()
                .frame(maxWidth: 500, maxHeight:100)
                .background(Color(.systemGray6))
                .cornerRadius(20)
            }
        }
        .padding()
    }
}

struct PodcastLinkView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastLinkView(podcast: PodcastData.examples()[1])
    }
}
