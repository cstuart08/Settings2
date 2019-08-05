//
//  SettingController.swift
//  Settings2
//
//  Created by Cameron Stuart on 8/5/19.
//  Copyright © 2019 Cameron Stuart. All rights reserved.
//

import Foundation
import UIKit.UIImage

class SettingController {
    
    static let sharedInstance = SettingController()
    
    var settings: [Setting] = []
    
    init() {
        let apps = Setting(name: "Apps", icon: #imageLiteral(resourceName: "apps"))
        let books = Setting(name: "Books", icon: #imageLiteral(resourceName: "books"))
        let music = Setting(name: "Music", icon: UIImage(named: "music"))
        
        settings = [apps, books, music]
    }
    
    func setIsOn(for setting: Setting, isOn: Bool) {
        setting.isOn = isOn
    }
}
