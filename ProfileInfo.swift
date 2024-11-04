import SwiftUI

struct ProfileInfo: View {
    //variables for data and UI state
    @State private var watchedfilm = AishuData.examples()
    @State private var followersd = followersData.examples()
    @State private var eventsd = eventsData.examples()
    @State private var isShareSheetPresented = false
    @State private var isFollowing = true

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // header section with settings button, profile name, and share button
                VStack {
                    HStack {
                        Spacer()
                        Text("415hw4ry4")
                        Spacer()
                       
                        Button(action: {
                            isShareSheetPresented = true
                        }) {
                            Image(systemName: "square.and.arrow.up")
                                .padding(.trailing, 10)
                        }
                        .sheet(isPresented: $isShareSheetPresented) {
                            shareProfile(items: ["Check out 415hw4ry4's profile on this app!"])
                        }
                    }
                    .padding()

                 
                    VStack {
                        Image("aishu")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .padding(.top, 20)
                        Button(action: {
                            isFollowing.toggle()
                        }) {
                            Text(isFollowing ? "Following" : "Follow")
                                .padding(4)
                                .foregroundColor(isFollowing ? .white : .black)
                                .background(isFollowing ? Color.blue : Color.clear)
                                .border(Color.blue)
                                .cornerRadius(10)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }

                VStack(spacing: 15) {
                    HStack {
                        Text("Watched Films")
                            .font(.headline)
                        Spacer()
                    }
                    .padding(.horizontal)
                    
//                    show the carousel of the watched films
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(watchedfilm) { watchedfilm in
                                watchedfilms_aishuRow(aishudata: watchedfilm)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                   
                    HStack {
                        Text("Upcoming Events you are going to")
                            .font(.headline)
                        Spacer()
                    }
                    .padding(.horizontal)
//                    show the caroulsel of the upcoming event section
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(eventsd.prefix(1)) { events in
                                eventsDataRow(event: events)
                            }
                        }
                        .padding(.horizontal)
                    }

                    
                    Text("Followers")
                        .font(.headline)
                    HStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 10) {
                                ForEach(followersd.reversed().prefix(3)) { follower in
                                    followers(profileuser: follower)
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                    .padding(.horizontal)

                
                    Text("Following")
                        .font(.headline)
                    HStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 10) {
                                ForEach(followersd.reversed().prefix(2)) { follower in
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


struct ProfileInfo_Previews: PreviewProvider {
    static var previews: some View {
        ProfileInfo()
    }
}

