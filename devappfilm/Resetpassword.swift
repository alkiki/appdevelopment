import SwiftUI

import SwiftUI
struct Resetpassword: View {
    // State variables for email input and confirmation message visibility
    @State private var email: String = ""
    @State private var showConfirmationMessage: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Forgot your password?")
                    .font(.custom("AppleSDGothicNeo-Regular", size: 18))
                
                // Email input field
                TextField("Enter your email", text: $email)
                    .padding()
                    .cornerRadius(30)
                    .background(RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(Color.gray, lineWidth: 1))
                    .padding([.leading, .trailing], 40)
                    .autocapitalization(.none)
                    .keyboardType(.emailAddress)
                
                // Reset Password button
                Button(action: {
                    // Simulate sending a password reset email
                    showConfirmationMessage = true
                }) {
                    Text("Reset Password")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(30)
                        .padding(.top, 20)
                }
                
                // Confirmation message
                if showConfirmationMessage {
                    Text("Your password reset email has been sent.")
                        .foregroundColor(.green)
                        .padding(.top, 20)
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

// Preview for the Resetpassword view
struct Resetpassword_Previews: PreviewProvider {
    static var previews: some View {
        Resetpassword()
    }
}
