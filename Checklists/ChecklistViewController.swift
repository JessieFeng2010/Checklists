//
//  ViewController.swift
//  Checklists
//
//  Created by Jessie on 15-1-9.
//  Copyright (c) 2015年 Jessie. All rights reserved.
//

import UIKit

class checklistViewController: UITableViewController {
    
    var row0item: ChecklistItem
    var row1item: ChecklistItem
    var row2item: ChecklistItem
    var row3item: ChecklistItem
    var row4item: ChecklistItem
    
    required init(coder aDecoder: NSCoder) {
        row0item = ChecklistItem()
        row0item.text = "Walk the dog"
        row0item.checked = false
        
        row1item = ChecklistItem()
        row1item.text = "Brush my teeth"
        row1item.checked = true
        
        row2item = ChecklistItem()
        row2item.text = "Learn IOS development"
        row2item.checked = true
        
        row3item = ChecklistItem()
        row3item.text = "Soccer practice"
        row3item.checked = false
        
        row4item = ChecklistItem()
        row4item.text = "Eat ice cream"
        row4item.checked = true
        
        super.init(coder: aDecoder)
    }
    
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
            label.text = row0item.text
            break
        case 1:
            label.text = row1item.text
            break
        case 2:
            label.text = row2item.text
            break
        case 3:
            label.text = row3item.text
            break
        case 4:
            label.text = row4item.text
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
                row0item.checked = !row0item.checked
                break
            case 1:
                row1item.checked = !row1item.checked
                break
            case 2:
                row2item.checked = !row2item.checked
                break
            case 3:
                row3item.checked = !row3item.checked
                break
            case 4:
                row4item.checked = !row4item.checked
                break
            default:
                break
            }
            
            configureCheckmarkForCell(cell, indexPath: indexPath)
        }
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    func configureCheckmarkForCell(cell: UITableViewCell, indexPath: NSIndexPath) {
        
        var isChecked = false
        
        switch(indexPath.row)
        {
        case 0:
            isChecked = row0item.checked
            break
        case 1:
            isChecked = row1item.checked
            break
        case 2:
            isChecked = row2item.checked
            break
        case 3:
            isChecked = row3item.checked
            break
        case 4:
            isChecked = row4item.checked
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

