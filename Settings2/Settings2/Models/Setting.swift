//
//  Setting.swift
//  Settings2
//
//  Created by Cameron Stuart on 8/5/19.
//  Copyright © 2019 Cameron Stuart. All rights reserved.
//

import UIKit

class Setting {
    let name: String
    let icon: UIImage?
    let isOn: Bool
    
    init(name: String, icon: UIImage?, isOn: Bool = false) {
        self.name = name
        self.icon = icon
        self.isOn = isOn
    }
}
