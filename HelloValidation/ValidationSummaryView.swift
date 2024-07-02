//
//  ValidationSummaryView.swift
//  HelloValidation
//
//  Created by Brandon Jones on 7/2/24.
//

import SwiftUI

struct ValidationSummaryView: View {
  
  
  @Binding var loginState: LoginState
  var body: some View {
    
    
   
    
    if let emailError = loginState.emailError {
      Text(emailError.errorDescription)
        .font(.caption)
    }
    if let passwordError = loginState.passwordError {
      Text(passwordError.errorDescription)
        .font(.caption)
    }
    
    
  }
}


#Preview {
  ValidationSummaryView(loginState: .constant(LoginState.example))
}
