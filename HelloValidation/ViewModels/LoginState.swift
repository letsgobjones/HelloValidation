//
//  LoginViewModel.swift
//  HelloValidation
//
//  Created by Brandon Jones on 7/2/24.
//

import Foundation

struct LoginState {
  
  
  var email: String = ""
  var password: String = ""
  var emailError: LoginError?
  var passwordError: LoginError?
  
  
  
mutating func clearErrors() {
    emailError = nil
    passwordError = nil
  }

  mutating func isValid() -> Bool {
    clearErrors()
    
    if email.isEmpty {
      emailError = .emailEmpty
    } else if !email.isValidEmail {
      emailError = .emailInvalid
    }
    
    if password.isEmpty {
      passwordError = .passwordEmpty
    } else if !password.isValidPassword {
      passwordError = .passwordInvalid
    }
    
   return emailError == nil && passwordError == nil
    
    
    
  }
  
}


extension LoginState {
  
  
  static  var example: LoginState {
    LoginState(email: "a@a.", password: "1234567", emailError: .emailEmpty, passwordError: .passwordInvalid)
  }
  
}
