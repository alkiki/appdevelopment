import Foundation
import SwiftUI


//layout of the film info 

struct FilmInfo: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                Image("tsateofcherry2")
                    .resizable()
                    .frame(width: 395, height: 260)
                    .overlay(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.white]), startPoint: .center, endPoint: .bottom))
                HStack(spacing: 55){
                    VStack{
                        HStack{
                            Text("Taste of cherry").bold()
                                .padding(6)
                            Text("طعم گيلاس")
                                .font(.caption)
                                .padding(6)
                        }
                        Text("Directed by Abbas Kiarostami")
                            .font(.caption)
                            .padding(6)
                        Button(action: {
                            if let url = URL(string: "https://www.youtube.com/watch?v=-6tpG3JCAFU") {
                                UIApplication.shared.open(url)
                            }
                        }) {
                            Text("Trailer")
                                .font(.caption)
                                .padding(6)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        } .padding(6)
                        
                    }
                    Image("tasteofcherry")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 150)
                }
                Color.gray.frame(height: 1 / UIScreen.main.scale)
                VStack{
                    Text("SEARCHING FOR THE REASON TO LIVE")
                    Text("  A middle-aged Tehranian man, Mr. Badii is intent on killing himself and seeks someone to bury him after his demise. Driving around the city, the seemingly well-to-do Badii meets with numerous people, including a Muslim student, asking them to take on the job, but initially he has little luck. Eventually, Badii finds a man who is up for the task because he needs the money, but his new associate soon tries to talk him out of committing suicide.")
                        .padding(10)
                }
//                 create a gray line to separate different sections of the page
                Color.gray.frame(height: 1 / UIScreen.main.scale)
                Text("Ratings")
                    .padding(.leading, 20)
                RatingsInfo()
                    .frame(maxWidth: .infinity)
                Color.gray.frame(height: 1 / UIScreen.main.scale)
                
                Text("Where to watch")
                    .padding(.leading, 20)
                Spacer()
                Text("No cinemas are available at the moment")
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top, 20)
                Spacer()
            }
        }
}
}



struct FilmInfo_Previews: PreviewProvider {
    static var previews: some View {
        FilmInfo();
    }
}
