//
//  File2.swift
//  appdev
//
//  Created by алина on 22.05.2024.
//
import Foundation
import SwiftUI
//layout of the film section
struct File2: View {
    var body: some View {
        VStack{
            Image("tasteofcherry1")
                .resizable()
                .frame(width: 395, height: 280)
                .overlay(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.white]), startPoint: .center, endPoint: .bottom))
            HStack(spacing: 100){
                VStack(alignment: .leading){
                    Text("alinayagaf")
                    Text("★★★☆☆")
                    HStack{
                        Text("Taste of Cherry").bold()
                        Text("1997")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    HStack{
                        NavigationLink(destination: FilmInfo()) {
                                            Text("Go to Film")
                                                .font(.caption)
                                                .padding(6)
                                                .background(Color.blue)
                                                .foregroundColor(.white)
                                                .cornerRadius(10)
                                        }
                        NavigationLink(destination: ProfileInfo()) {
                                            Text("Go to profile")
                                                .font(.caption)
                                                .padding(6)
                                                .background(Color.blue)
                                                .foregroundColor(.white)
                                                .cornerRadius(10)
                                        }
                    }
                }
                Image("tasteofcherry")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 150)
            }
            Color.gray.frame(height: 1 / UIScreen.main.scale)
            Spacer()
        }

    }
}

struct File2_Previews: PreviewProvider {
    static var previews: some View {
        File2()
    }
}
