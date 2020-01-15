//
//  SettingsViewController.swift
//  UserDefaults-Demo
//
//  Created by Alex Paul on 1/13/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController {
  
  @IBOutlet weak var unitMeasurementLabel: UILabel!
  @IBOutlet weak var defaultImageView: UIImageView!
  
  private var currentUnit = UnitMeasurement.miles {
    didSet {
      unitMeasurementLabel.text = currentUnit.rawValue
      UserPreference.shared.updateDefaults(with: currentUnit.rawValue, for: UserPreferenceKey.unitMeasurement)
    }
  }
  
  private var currentImage = DefaultImage.bike {
    didSet {
      defaultImageView.image = UIImage(named: currentImage.rawValue)
      UserPreference.shared.updateDefaults(with: currentImage.rawValue, for: UserPreferenceKey.defaultImage)
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    updateUI()
  }
  
  private func updateUI() {
    let unitString: String = UserPreference.shared.getDefaultValue(for: UserPreferenceKey.unitMeasurement) ?? ""
    let unitMeasurement = UnitMeasurement(rawValue: unitString) ?? UnitMeasurement.miles
    currentUnit = unitMeasurement
    
    let defaultImageString: String = UserPreference.shared.getDefaultValue(for: UserPreferenceKey.defaultImage) ?? ""
    let defaultImage = DefaultImage(rawValue: defaultImageString) ?? DefaultImage.bike
    currentImage = defaultImage
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    switch indexPath.row {
    case 0:
      toggleUnitMeasurement()
    case 1:
      toggleDefaultImage()
    default:
      break
    }
  }
  
  private func toggleUnitMeasurement() {
    currentUnit = (currentUnit == UnitMeasurement.miles) ? UnitMeasurement.kilometers : UnitMeasurement.miles
  }
  
  private func toggleDefaultImage() {
     currentImage = (currentImage == DefaultImage.bike) ? DefaultImage.run : DefaultImage.bike
   }
}
