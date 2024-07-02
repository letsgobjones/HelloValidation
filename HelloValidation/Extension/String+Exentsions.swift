//
//  String+Exentsions.swift
//  HelloValidation
//
//  Created by Brandon Jones on 7/2/24.
//

import Foundation


extension String {
  
  var isValidEmail: Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    let predicate = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return predicate.evaluate(with: self)
  }
}
