//
//  SettingTableViewController.swift
//  Settings2
//
//  Created by Cameron Stuart on 8/5/19.
//  Copyright © 2019 Cameron Stuart. All rights reserved.
//

import UIKit

class SettingTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingController.sharedInstance.settings.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell", for: indexPath) as? SettingTableViewCell else { return UITableViewCell() }
        
        let setting = SettingController.sharedInstance.settings[indexPath.row]
        cell.setting = setting
        cell.delegate = self
        
        return cell
    }
}

extension SettingTableViewController: SettingTableViewCellDelegate {
    // cell gets switched, calls delegate (which is in tableView)
    func cellSettingSwitchValueChanged(cell: SettingTableViewCell, isOn: Bool) {
        // grab setting off the cell
        guard let setting = cell.setting,
            //find index path of the cell (to be reloaded later)
            let indexPath = tableView.indexPath(for: cell) else { return }
        // setting controller updates the setting
        SettingController.sharedInstance.setIsOn(for: setting, isOn: isOn)
        //reload cell's row
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
}


