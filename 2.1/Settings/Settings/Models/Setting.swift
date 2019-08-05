//
//  Setting.swift
//  Settings
//
//  Created by Cameron Stuart on 8/5/19.
//  Copyright © 2019 Cameron Stuart. All rights reserved.
//

import UIKit


class Setting {
    
    let name: String
    let image: UIImage?
    var isSet: Bool
    
    init(name: String, image: UIImage, isSet: Bool) {
        self.name = name
        self.image = image
        self.isSet = isSet
    }
}
