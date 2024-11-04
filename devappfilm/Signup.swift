import SwiftUI

struct Signup: View {
    // State variables for user input and UI state
    @State private var name: String = ""
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var showConfirmationMessage: Bool = false
    @State private var passwordsMatch: Bool = true
    @State private var selectedAge: Int = 18
    
    // Computed property to check if sign up button should be enabled
    private var canSignUp: Bool {
        return !name.isEmpty && !username.isEmpty && !email.isEmpty && !password.isEmpty && !confirmPassword.isEmpty && password == confirmPassword
    }

    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                // Title text
                Text("Sign Up")
                    .font(.custom("AppleSDGothicNeo-Regular", size: 24))
                    .padding(.bottom, 20)
                
                // Group for name and username input fields
                Group {
                    Text("Enter your name")
                        .padding(.trailing, 130)
                    TextField("Enter your name", text: $name)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(Color.gray, lineWidth: 1))
                        .padding([.leading, .trailing], 40)
                        .autocapitalization(.none)
                    
                    Text("Enter your username")
                        .padding(.trailing, 130)
                    TextField("Username", text: $username)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(Color.gray, lineWidth: 1))
                        .padding([.leading, .trailing], 40)
                        .autocapitalization(.none)
                }
                
                // Age selection picker
                Text("Select your age")
                    .padding(.trailing, 160)
                Picker("Select your age", selection: $selectedAge) {
                    ForEach(18..<100) { age in
                        Text("\(age)").tag(age)
                    }
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10)
                .strokeBorder(Color.gray, lineWidth: 1))
                .cornerRadius(10)
                .padding(.trailing, 190)
                .padding(.top, 5)
                
                // Group for email and password input fields
                Group {
                    Text("Enter your email")
                        .padding(.trailing, 160)
                    TextField("Enter your email", text: $email)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(Color.gray, lineWidth: 1))
                        .padding([.leading, .trailing], 40)
                        .autocapitalization(.none)
                        .keyboardType(.emailAddress)
                    
                    Text("Enter your password")
                        .padding(.trailing, 130)
                    SecureField("Enter your password", text: $password)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(Color.gray, lineWidth: 1))
                        .padding([.leading, .trailing], 40)
                        .cornerRadius(10)
                        .padding(.top, 10)
                    
                    SecureField("Confirm your password", text: $confirmPassword)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(Color.gray, lineWidth: 1))
                        .padding([.leading, .trailing], 40)
                        .cornerRadius(10)
                        .padding(.top, 10)
                }
                
                // Show error message if passwords do not match
                if !passwordsMatch {
                    Text("Passwords do not match")
                        .foregroundColor(.red)
                        .padding(.top, 5)
                }
                
                // Sign Up button
                Button(action: {
                    if password == confirmPassword {
                        passwordsMatch = true
                        showConfirmationMessage = true
                    } else {
                        passwordsMatch = false
                    }
                }) {
                    Text("Sign Up")
                        .foregroundColor(.white)
                        .padding()
                        .background(canSignUp ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .padding(.top, 20)
                }
                .disabled(!canSignUp)
                
                // Show confirmation message if sign up is successful
                if showConfirmationMessage {
                    Text("You have successfully signed up.")
                        .foregroundColor(.green)
                        .padding(.top, 20)
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

// Preview for the Signup view
struct Signup_Previews: PreviewProvider {
    static var previews: some View {
        Signup()
    }
}
