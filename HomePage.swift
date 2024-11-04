import SwiftUI
import Foundation

struct HomePage: View {
    //  variables to manage the data for articles, posters, and podcasts
    @State private var article = ArticlesData.examples()
    @State private var poster = PostersData.examples()
    @State private var podcast = PodcastData.examples()

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 3) {
                Text("News & Articles")
                    .font(.title2)
                    .padding(.leading, 10)
                    .padding(.top, 10)
                
                // Horizontal scroll view for articles
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(article) { article in
                            ArticleRowView(article: article)
                        }
                    }
                    .padding(.horizontal)
                }
                
                VStack(alignment: .leading) {
                    Text("Your Friends' Activity")
                        .font(.title2)
                        .padding(.leading, 10)
                        .padding(.top, 10)
                    
                    // Horizontal scroll view for friends' activity (posters)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(poster) { poster in
                                PostersDataRowView(poster: poster)
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                Text("From Creatives")
                    .font(.title2)
                    .padding(.leading, 10)
                    .padding(.top, 20)
                
                // Vertical scroll view for podcasts
                ScrollView {
                    VStack(spacing: 10) {
                        ForEach(podcast) { podcast in
                            PodcastLinkView(podcast: podcast)
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .edgesIgnoringSafeArea(.top)
            .padding(.top, 0) 
        }
    }
}

// Preview for the HomePage view
struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
