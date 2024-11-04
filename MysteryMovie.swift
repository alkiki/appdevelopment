import Foundation
import SwiftUI

struct MysteryMovie: View {
    @State private var isTicketOpen = false
    @State private var isInviteFriendsPresented = false

    var friends = followersData.examples()
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                // Title section
                HStack {
                    Spacer()
                    Text("You are going to:")
                        .padding(.top, 20)
                        .padding(.leading, 10)
                    Spacer()
                }
                
                // Image section
                HStack {
                    Spacer()
                    Image("quiz")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .padding(.top, 20)
                    Spacer()
                }
                
                // Event details section
                HStack {
                    Spacer()
                    VStack {
                        Text("THE DEEPER INTO MOVIES FILM QUIZ")
                            .bold()
                            .padding(.leading, 10)
                            .padding(.top, 20)
                        Text("The Mildmay Club")
                            .padding(.leading, 10)
                            .padding(.top, 20)
                        Text("Thu, 20 Jun, 7:00 pm")
                            .foregroundColor(.blue)
                            .padding(.top, 20)
                            .padding(.leading, 10)
                            .padding(.bottom, 20)
                    }
                    Spacer()
                }
                
                // Open ticket button
                HStack {
                    Spacer()
                    Button(action: {
                        isTicketOpen = true
                    }) {
                        Text("Open your ticket")
                            .padding(5)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .strokeBorder(Color.blue, lineWidth: 1)
                            )
                            .frame(maxWidth: .infinity, alignment: .center)
                    }
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                }
                .sheet(isPresented: $isTicketOpen) {
                    TicketView()
                }
                
                // Invite friends button
                HStack {
                    Spacer()
                    Button(action: {
                        isInviteFriendsPresented = true
                    }) {
                        Text("Invite your friends")
                            .padding(5)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .strokeBorder(Color.blue, lineWidth: 1)
                            )
                            .frame(maxWidth: .infinity, alignment: .center)
                    }
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                }
            }
        }
        .sheet(isPresented: $isInviteFriendsPresented) {
            inviteFriends(isPresented: $isInviteFriendsPresented, friends: friends)
        }
    }
}

// Ticket view for displaying ticket details
struct TicketView: View {
    var body: some View {
        VStack {
            Text("Your Ticket")
                .font(.largeTitle)
                .padding()
            Text("Event: THE DEEPER INTO MOVIES FILM QUIZ")
            Text("Date: June 30, 2024")
            Text("Time: 7:00 PM")
            Text("Venue: Deeper Into Movies Cinema")
            HStack {
                Spacer()
                Image("qrcode")
                    .resizable()
                    .frame(width: 200, height: 200)
                Spacer()
            }
            Spacer()
        }
        .padding()
    }
}

// Preview for the MysteryMovie view
struct MysteryMovie_Previews: PreviewProvider {
    static var previews: some View {
        MysteryMovie()
    }
}
