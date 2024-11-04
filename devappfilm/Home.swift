
import SwiftUI
struct Home: View {
//    after loggin in the first page that opens i s home page
    @State private var selection = 2
    var body: some View {
        TabView(selection: $selection) {
//            create the bottom navigation menu
            TicketsPage()
                .tabItem {
                    Image(systemName: "ticket")
                    Text("Tickets")
                }
                .tag(0)
            SearchPage()
                .tabItem{
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
                .tag(1)
            HomePage()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(2)
            ProfilePage()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tag(3)
            
        }
    }
}
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
