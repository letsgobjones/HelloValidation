//
//  LoginView.swift
//  HelloValidation
//
//  Created by Brandon Jones on 7/2/24.
//

import SwiftUI






struct LoginView: View {
  @Binding  var loginState: LoginState
  var body: some View {
    Form {
      TextField("Email", text: $loginState.email)
        .textInputAutocapitalization(.never)
      SecureField("Password", text: $loginState.password)

      Button("Login") {
        if loginState.isValid() {
          //perform login
        }
        
        
        
      }
      ValidationSummaryView(loginState: $loginState)
    }
    
  }
}



#Preview {
  LoginView(loginState: .constant(LoginState.example))
}
