//
//  ContentView.swift
//  HelloValidation
//
//  Created by Brandon Jones on 7/2/24.
//

import SwiftUI

struct ContentView: View {
  @State  var loginState = LoginState()
    var body: some View {
      
      LoginView(loginState: $loginState)
     
    
      
      
      
    }
}

#Preview {
    ContentView()
}
