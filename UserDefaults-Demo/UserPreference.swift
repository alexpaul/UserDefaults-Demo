//
//  UserPreference.swift
//  UserDefaults-Demo
//
//  Created by Alex Paul on 1/13/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import Foundation

enum UnitMeasurement: String {
  case miles = "Miles"
  case kilometers = "Kilometers"
}

enum DefaultImage: String {
  case run = "run"
  case bike = "bike"
}

struct UserPreferenceKey {
  static let unitMeasurement = "Unit Measurement"
  static let defaultImage = "Default Image"
}

class UserPreference {
  private init() {}
    
  static let shared = UserPreference()
  
  func updateDefaults<T>(with value: T, for key: String) {
    UserDefaults.standard.set(value, forKey: key)
  }
  
  func getDefaultValue<T>(for key: String) -> T? {
    guard let value = UserDefaults.standard.object(forKey: key) as? T else {
      return nil
    }
    return value
  }
}
