import Foundation
import SwiftUI
import UIKit

struct inviteFriends: View {
    // Binding variable to control the presentation of the view
    @Binding var isPresented: Bool
    
    // State variables for selected friends and share sheet visibility
    @State private var selectedFriends = Set<UUID>()
    @State private var showShareSheet = false
    
    // List of friends to invite
    var friends: [followersData]

    var body: some View {
        VStack {
            // Title
            Text("Invite Your Friends")
                .padding()
            
            // List of friends with multi-selection enabled
            List(friends, id: \.id, selection: $selectedFriends) { friend in
                HStack {
                    // Friend's profile image
                    Image(friend.ImageName)
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                    // Friend's username
                    Text(friend.UserName)
                }
            }
            .environment(\.editMode, .constant(EditMode.active)) // Enable multi-selection
            
            // Send Invitations button
            Button(action: {
                showShareSheet = true // Show the share sheet
            }) {
                Text("Send Invitations")
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(Color.blue, lineWidth: 1))
                    .foregroundColor(.black)
                    .cornerRadius(10)
            }
            .padding()
            .disabled(selectedFriends.isEmpty) // Disable button if no friends are selected
            .sheet(isPresented: $showShareSheet) {
                // Share sheet for sending invitations
                ShareSheet(items: ["Join me for this event!"] + selectedFriends.map { friendID in
                    friends.first(where: { $0.id == friendID })?.UserName ?? ""
                })
            }
            .padding()
        }
    }
}

struct ShareSheet: UIViewControllerRepresentable {
    var items: [Any] // Items to share
    var excludedActivityTypes: [UIActivity.ActivityType]? = nil // Activity types to exclude

    func makeUIViewController(context: Context) -> UIActivityViewController {
        // Create and configure the activity view controller
        let controller = UIActivityViewController(activityItems: items, applicationActivities: nil)
        controller.excludedActivityTypes = excludedActivityTypes
        return controller
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {}
}
