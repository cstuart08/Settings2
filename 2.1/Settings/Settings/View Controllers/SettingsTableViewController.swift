//
//  SettingsTableViewController.swift
//  Settings
//
//  Created by Cameron Stuart on 8/5/19.
//  Copyright © 2019 Cameron Stuart. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController, SettingTableViewCellDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func settingIsSetValueChanged(cell: SettingTableViewCell, isSet: Bool) {
        
        guard let setting = cell.setting,
            let cellIndexPath = tableView.indexPath(for: cell) else { return }
        
        tableView.beginUpdates()
        
        SettingsController.shared.updateIsSetFor(setting: setting, isSet: isSet)
        
        tableView.reloadRows(at: [cellIndexPath], with: .automatic)
        
        tableView.endUpdates()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingsController.shared.settings.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell", for: indexPath) as? SettingTableViewCell else
        { return UITableViewCell() }
        
        let setting = SettingsController.shared.settings[indexPath.row]
        
        cell.setting = setting
        cell.delegate = self
        
        return cell
    }
}
