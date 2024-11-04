import Foundation
import SwiftUI
struct ProfilePage: View {
    //  variables for profile data and UI state
    @State private var watchedfilm = ProfileFilmsData.examples()
    @State private var followersd = followersData.examples()
    @State private var eventsd = eventsData.examples()
    @State private var isShareSheetPresented = false

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Header section with settings button, profile name, and share button
                VStack {
                    HStack {
                        // Navigation link to settings
                        NavigationLink(destination: settings().navigationBarBackButtonHidden(true)) {
                            Image(systemName: "gearshape")
                                .padding(.leading, 10)
                        }
                        Spacer()
                        // Profile name
                        Text("alinayagaf")
                        Spacer()
                        // Share profile button
                        Button(action: {
                            isShareSheetPresented = true
                        }) {
                            Image(systemName: "square.and.arrow.up")
                                .padding(.trailing, 10)
                        }
                        .sheet(isPresented: $isShareSheetPresented) {
                            shareProfile(items: ["Check out my profile on this app!"])
                        }
                    }
                    .padding()
                    
                    // Profile image
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .padding(.top, 20)


                    // Watched Films section
                    HStack {
                        Text("Watched Films")
                            .font(.headline)
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(watchedfilm) { watchedfilm in
                                ProfileFilms(profilefilm: watchedfilm)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    // Upcoming Events section
                    HStack {
                        Text("Upcoming Events you are going to")
                            .font(.headline)
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(eventsd) { events in
                                eventsDataRow(event: events)
                            }
                        }
                        .padding(.horizontal)
                    }

                    // Followers section
                    Text("Followers")
                        .font(.headline)
                    HStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 10) {
                                ForEach(followersd) { follower in
                                    followers(profileuser: follower)
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                    .padding(.horizontal)
                    
                    // Following section
                    Text("Following")
                        .font(.headline)
                    HStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 10) {
                                ForEach(followersd) { follower in
                                    followers(profileuser: follower)
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.top, 20)
            }
            .padding()
        }
    }
}

// Preview for the ProfilePage view
struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
