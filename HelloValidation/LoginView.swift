//
//  ContentView.swift
//  HelloValidation
//
//  Created by Brandon Jones on 7/2/24.
//

import SwiftUI






struct LoginView: View {
  @State private var loginState = LoginState()
  
  
  
  var body: some View {
    Form {
      TextField("Email", text: $loginState.email)
        .textInputAutocapitalization(.never)
      
      
      if let emailError = loginState.emailError {
        Text(emailError.errorDescription)
          .font(.caption)
        
      }
      
      
      
      
      
      
      SecureField("Password", text: $loginState.password)
      
      if let passwordError = loginState.passwordError {
        Text(passwordError.errorDescription)
          .font(.caption)
        
      }
      
      Button("Login") {
        if loginState.isValid() {
          //perform login
        }
      }
    }
  }
}



#Preview {
  LoginView()
}
