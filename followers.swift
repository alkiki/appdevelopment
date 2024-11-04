import Foundation
import SwiftUI



// layout of the profile image and th euser name of the following users
struct followers: View {
    let profileuser: followersData
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            NavigationLink(destination: ProfileInfo()) {
                Image(profileuser.ImageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
            }
                Text(profileuser.UserName)
                    .font(.caption)
                    .foregroundColor(.black )
        }
        .padding(.vertical, 1)
    }
}


struct followers_Previews: PreviewProvider{
    static var previews: some View{
        VStack(alignment: .leading){
            followers(profileuser: followersData.examples()[1])
        }
    }
}

