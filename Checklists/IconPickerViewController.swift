//
//  IconPickerViewController.swift
//  Checklists
//
//  Created by Jessie on 15-2-4.
//  Copyright (c) 2015年 Jessie. All rights reserved.
//

import UIKit

protocol IconPickerViewControllerDelegate: class {
    func iconPicker(picker: IconPickerViewController, didPickicon iconName: String)
}

class IconPickerViewController: UITableViewController {
    weak var delegate: IconPickerViewControllerDelegate?
    
    let icons = [
        "No Icon",
        "Appointments",
        "Birthdays",
        "Chores",
        "Drinks",
        "Folder",
        "Groceries",
        "Inbox",
        "Photos",
        "Trips"]
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return icons.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("IconCell") as UITableViewCell
        
        let iconName = icons[indexPath.row]
        
        cell.textLabel.text = iconName//!
        cell.imageView.image = UIImage(named: iconName)//!
        
        return cell
    }
}
