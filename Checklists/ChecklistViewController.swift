//
//  ViewController.swift
//  Checklists
//
//  Created by Jessie on 15-1-9.
//  Copyright (c) 2015年 Jessie. All rights reserved.
//

import UIKit

class checklistViewController: UITableViewController {
    
    var row0text = "Walk the dog"
    var row1text = "Brush my teeth"
    var row2text = "Learn IOS development"
    var row3text = "Soccer practice"
    var row4text = "Eat ice cream"
    
    var row0checked = false
    var row1checked = false
    var row2checked = false
    var row3checked = false
    var row4checked = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ChecklistItem") as UITableViewCell
        
        let label = cell.viewWithTag(1000) as UILabel
        
        switch(indexPath.row)
        {
        case 0:
            label.text = row0text
            break
        case 1:
            label.text = row1text
            break
        case 2:
            label.text = row2text
            break
        case 3:
            label.text = row3text
            break
        case 4:
            label.text = row4text
            break
        default:
            break
        }
        
        configureCheckmarkForCell(cell, indexPath: indexPath)
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if let cell = tableView.cellForRowAtIndexPath(indexPath) {
            
            var isChecked = false
            
            switch(indexPath.row)
            {
            case 0:
                row0checked = !row0checked
                isChecked = row0checked
                break
            case 1:
                row1checked = !row1checked
                isChecked = row1checked
                break
            case 2:
                row2checked = !row2checked
                isChecked = row2checked
                break
            case 3:
                row3checked = !row3checked
                isChecked = row3checked
                break
            case 4:
                row4checked = !row4checked
                isChecked = row4checked
                break
            default:
                break
            }
            
            if cell.accessoryType == .None {
                cell.accessoryType = .Checkmark
            } else {
                cell.accessoryType = .None
            }
        }
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    func configureCheckmarkForCell(cell: UITableViewCell, indexPath: NSIndexPath) {
        
        var isChecked = false
        
        switch(indexPath.row)
        {
        case 0:
            isChecked = row0checked
            break
        case 1:
            isChecked = row1checked
            break
        case 2:
            isChecked = row2checked
            break
        case 3:
            isChecked = row3checked
            break
        case 4:
            isChecked = row4checked
            break
        default:
            break
        }
        
        if isChecked {
            cell.accessoryType = .Checkmark
        } else {
            cell.accessoryType = .None
        }
    }
}

