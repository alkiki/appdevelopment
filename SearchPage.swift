//
//  SearchPage.swift
//  devappfilm
//
//  Created by алина on 09.06.2024.
//

import SwiftUI

import SwiftUI

struct SearchPage: View {
    @State private var searchText = ""
    var body: some View {
        VStack {
            SearchBar(text: $searchText, onSearchButtonClicked: {
                // action when search button is clicked
                print("Search button clicked with text: \(searchText)")
            })
            .padding(.horizontal)
            .padding(.top, 10)
            
            Spacer() // this will push the search bar to the top
        }
        .navigationTitle("Search Films")
    }
}

struct SearchPage_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SearchPage()
        }
    }
}
struct SearchBar: UIViewRepresentable {
    // store the search text
    @Binding var text: String
    var onSearchButtonClicked: () -> Void
    // Coordinator class to act as the delegate for UISearchBar
    class Coordinator: NSObject, UISearchBarDelegate {
        @Binding var text: String
        var onSearchButtonClicked: () -> Void
        
        // Initializer for Coordinator with text binding and search button action
        init(text: Binding<String>, onSearchButtonClicked: @escaping () -> Void) {
            _text = text
            self.onSearchButtonClicked = onSearchButtonClicked
        }
        
        // Method to handle text changes in the UISearchBar
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
        
        // Method to handle search button click in the UISearchBar
        func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
            onSearchButtonClicked()
        }
    }
    
    // Method to create the Coordinator
    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text, onSearchButtonClicked: onSearchButtonClicked)
    }
    
    // Method to create the UISearchBar
    func makeUIView(context: Context) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator // Set the coordinator as the delegate
        searchBar.placeholder = "Search Films" // Set placeholder text
        return searchBar
    }
    
    // Method to update the UISearchBar with the latest text value
    func updateUIView(_ uiView: UISearchBar, context: Context) {
        uiView.text = text
    }
}
