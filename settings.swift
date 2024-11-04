import SwiftUI

struct settings: View {
    // environment variable to manage the presentation mode
    @Environment(\.presentationMode) var presentationMode

    // state variables for user profile information
    @State private var givenName = "алина"
    @State private var familyName = ""
    @State private var emailAddress = "yagafarovaalina@gmail.com"
    @State private var location = ""
    @State private var website = ""
    @State private var bio = ""
    @State private var pronoun = "She / her"
    @State private var cinemas_images = ["princecharles", "bfi"]
    @State private var favoriteFilms = ["Prince Charles Cinema", "Bfi"]

    var body: some View {
        NavigationView {
            Form {
                // profile section
                Section(header: Text("PROFILE")) {
                    TextField("Given name", text: $givenName)
                    TextField("Family name", text: $familyName)
                    TextField("Email address", text: $emailAddress)
                        .keyboardType(.emailAddress)
                    TextField("Location", text: $location)
                    TextField("Website", text: $website)
                        .keyboardType(.URL)
                    TextField("Bio", text: $bio)
                    TextField("Pronoun", text: $pronoun)
                }

                // favorite Cinemas section
                Section(header: Text("FAVORITE CINEMAS")) {
                    // If no cinemas are available
                    if cinemas_images.isEmpty {
                        VStack {
                            Spacer()
                            Text("No cinemas are available at the moment")
                                .frame(maxWidth: .infinity, alignment: .center)
                            Spacer()
                        }
                    } else {
                        // display favorite cinemas
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(Array(zip(cinemas_images, favoriteFilms)), id: \.1) { (imageName, filmName) in
                                    VStack {
                                        Image(imageName)
                                            .resizable()
                                            .frame(width: 100, height: 100)
                                            .cornerRadius(8)
                                        Text(filmName)
                                            .font(.caption)
                                    }
                                    .padding(.leading, 5)
                                }
                            }
                        }
                    }
                }
                // Sign out section
                Section {
                    NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)) {
                        Text("Sign out")
                            .padding(.top, 2)
                            .foregroundColor(.red)
                    }
                }
            }
            .navigationTitle("Settings")
            .navigationBarItems(
                leading: Button("Cancel") {
                    presentationMode.wrappedValue.dismiss()
                },
                trailing: Button("Save") {
                    presentationMode.wrappedValue.dismiss()
                }
            )
        }
    }
}

struct settings_Previews: PreviewProvider {
    static var previews: some View {
        settings()
    }
}
