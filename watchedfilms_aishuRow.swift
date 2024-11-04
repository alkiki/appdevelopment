
import Foundation
import SwiftUI
struct watchedfilms_aishuRow: View {
    let aishudata : AishuData
//    create  a layout of the filmposter and rating underneath to show on another user's profile page
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
                Image(aishudata.ImageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 150)
                    .padding(.horizontal, 1)
            }
            Text(aishudata.rating)
                .font(.caption)
                .foregroundColor(.gray)
                .padding(.leading, 15)
        }

}


struct watchedfilms_aishuRow_Previews: PreviewProvider{
    static var previews: some View{
        VStack(alignment: .leading){
            watchedfilms_aishuRow(aishudata: AishuData.examples()[1])
        }
    }
}
