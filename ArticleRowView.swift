import Foundation
import SwiftUI

//layout of the articles 
struct ArticleRowView: View {
    let article : ArticlesData
    var body: some View {
        HStack {
            NavigationLink(destination: File1()) {
                ZStack {
                    Image(article.ImageName)
                        .resizable()
                        .frame(width: 220, height: 150)
                        .opacity(0.4) // Decrease the opacity of the image
                    
                    VStack(alignment: .leading, spacing: 3) {
                        Text(article.name)
                            .font(.headline)
                            .foregroundColor(.black) // Ensure the text is readable
                            .padding([.leading, .trailing, .top], 5)
                             // Background for text to improve readability
                            .cornerRadius(5)
                    }
                    .padding(.horizontal, 8)
                    .padding(.vertical, 2)
                }
                .frame(width: 220, height: 150)
            }
        }
    }
}


struct ArticleRowView_Previews: PreviewProvider{
    static var previews: some View{
        VStack(alignment: .leading){
            ArticleRowView(article: ArticlesData.examples()[0])
        }
    }
}
