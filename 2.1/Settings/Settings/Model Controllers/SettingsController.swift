//
//  SettingsController.swift
//  Settings
//
//  Created by Cameron Stuart on 8/5/19.
//  Copyright © 2019 Cameron Stuart. All rights reserved.
//

import UIKit

class SettingsController {
    
    static let shared = SettingsController()
    
    var settings: [Setting]
    
    init() {
        let apps = Setting(name: "Apps", image: UIImage(named: "Apps")!, isSet: false)
        let music = Setting(name: "Music", image: UIImage(named: "Music")!, isSet: false)
        let books = Setting(name: "Books", image: UIImage(named: "Books")!, isSet: false)
        
        self.settings = [apps, music, books]
    }
    
    func updateIsSetFor(setting: Setting, isSet: Bool) {
        setting.isSet = isSet
    }
}
