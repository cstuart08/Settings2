//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Cameron Stuart on 8/5/19.
//  Copyright © 2019 Cameron Stuart. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    weak var delegate: SettingTableViewCellDelegate?
    
    var setting: Setting? {
        didSet {
            updateViews()
        }
    }
    
    @IBAction func settingSwitchValueChanged(_ sender: Any) {
        delegate?.settingIsSetValueChanged(cell: self, isSet: settingSwitch.isOn)
    }
    
    
    func updateViews() {
        guard let setting = setting else { return }
        
        iconImageView.image = setting.image
        nameLabel.text = setting.name
        settingSwitch.isOn = setting.isSet
        
        if setting.isSet == true {
            backgroundColor = .blue
        } else {
            backgroundColor = .white
        }
    }
    
    func updateIsSetForSetting(setting: Setting, isSet: Bool) {
        setting.isSet = isSet
    }
}

protocol SettingTableViewCellDelegate: class {
    func settingIsSetValueChanged(cell: SettingTableViewCell, isSet: Bool)
}
