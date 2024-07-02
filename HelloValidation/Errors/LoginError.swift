//
//  LoginError.swift
//  HelloValidation
//
//  Created by Brandon Jones on 7/2/24.
//

import Foundation



enum LoginError: Error, LocalizedError {
  case emailEmpty
  case emailInvalid
  case passwordEmpty
  case passwordInvalid

  var errorDescription: String {
    switch self {
    case .emailEmpty:
      return "Email is required!"
    case .emailInvalid:
      return "Email is invalid and not in the correct format!"
    case .passwordEmpty:
      return "Password is required!"
    case .passwordInvalid:
      return "Password is invalid and not in the correct format!"
    }
  }
}
