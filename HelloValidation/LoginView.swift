//
//  ContentView.swift
//  HelloValidation
//
//  Created by Brandon Jones on 7/2/24.
//

import SwiftUI






struct LoginView: View {
  @State private var email: String = ""
  @State private var password: String = ""
  @State private var loginFormError = LoginFormError()
  
  
  private func clearForm() {
    loginFormError = LoginFormError()
  }
  
  
  var isFormValid: Bool {
    clearForm()
    if email.isEmpty {
      loginFormError.email = "Email is required!"
    } else if  !email.isValidEmail {
      loginFormError.email = "Email is not in correct format!"
    }
    if password.isEmpty {
      loginFormError.password = "Password is required!"
    }
    return !email.isEmpty && !password.isEmpty && email.isValidEmail
  }
  
  
  var body: some View {
      Form {
        TextField("Email", text: $email)
          .textInputAutocapitalization(.never)
        if !loginFormError.email.isEmpty {
          Text(loginFormError.email)
            .font(.caption)
        }
        SecureField("Password", text: $password)
        
        if !loginFormError.password.isEmpty {
          Text(loginFormError.password)
            .font(.caption)
        }
        Button("Login") {
          if isFormValid {
            //submit the form
          }
        }/*.disabled(!isFormValid)*/
      }
  }
}


#Preview {
  LoginView()
}
