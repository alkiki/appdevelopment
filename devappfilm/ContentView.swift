import SwiftUI
struct ContentView: View {
    // State variables for username, password, and login status
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isLoggedIn: Bool = false

    var body: some View {
        NavigationView {
            // Check if user is logged in
            if isLoggedIn {
                // If logged in, show the main view
                MainView()
            } else {
                // If not logged in, show the login form
                VStack {
                    // Display login image
                    Image("login")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300)
                    
                    // Welcome text
                    Text("Welcome back!")
                    
                    // Username input field
                    TextField("Username", text: $username)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(Color.gray, lineWidth: 1))
                        .cornerRadius(10)
                        .padding([.leading, .trailing], 40)
                        .autocapitalization(.none)
                    
                    // Password input field
                    SecureField("Password", text: $password)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(Color.gray, lineWidth: 1))
                        .cornerRadius(10)
                        .padding([.leading, .trailing], 40)
                    
                    // Login button
                    Button(action: {
                        // Dummy login check
                        if username == "test" && password == "pass" {
                            isLoggedIn = true
                        }
                    }) {
                        Text("Login")
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 200, height: 50)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    .padding(.top, 10)
                    
                    // Navigation link to reset password view
                    NavigationLink(destination: Resetpassword()) {
                        Text("Forgot your password?")
                            .padding(.top, 2)
                    }
                    
                    // Navigation link to sign up view
                    NavigationLink(destination: Signup()) {
                        Text("Don't have an account? Sign up")
                            .padding(.top, 40)
                    }
                }
            }
        }
    }
}

// Main view that is shown after login
struct MainView: View {
    var body: some View {
        NavigationView {
            Home()
        }
    }
}

// View for the sign up page
struct Signuppage: View {
    var body: some View {
        NavigationView {
            Signup()
        }
    }
}

// View for the password reset page
struct Passwordreset: View {
    var body: some View {
        NavigationView {
            Resetpassword()
        }
    }
}

// Preview provider for the ContentView
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

