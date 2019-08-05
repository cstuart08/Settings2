//
//  SettingTableViewCell.swift
//  Settings2
//
//  Created by Cameron Stuart on 8/5/19.
//  Copyright © 2019 Cameron Stuart. All rights reserved.
//

import UIKit

protocol SettingTableViewCellDelegate: class {
    func cellSettingSwitchValueChanged(cell: SettingTableViewCell, isOn: Bool)
}

class SettingTableViewCell: UITableViewCell {
    
    //MARK: - Outlets
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    //MARK: - Actions
    @IBAction func settingSwitchValueChanged(_ sender: Any) {
        delegate?.cellSettingSwitchValueChanged(cell: self, isOn: settingSwitch.isOn)
    }
    
    //MARK: - Properties
    
    // delegate
    weak var delegate: SettingTableViewCellDelegate?
    
    // landing pad
    var setting: Setting? {
        didSet {
            updateViews()
        }
    }
    
    //MARK: - Custom Methods
    
    func updateViews() {
        if let setting = setting {
            iconImageView.image = setting.icon
            nameLabel.text = setting.name
            settingSwitch.isOn = setting.isOn
            
            backgroundColor = setting.isOn ? .lightGray : .white
        } else {
            
        }
    }
}
