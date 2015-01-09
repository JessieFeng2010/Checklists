//
//  ViewController.swift
//  Checklists
//
//  Created by Jessie on 15-1-9.
//  Copyright (c) 2015年 Jessie. All rights reserved.
//

import UIKit

class checklistViewController: UITableViewController {
    
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
            label.text = "Walk the dog"
            break
        case 1:
            label.text = "Brush my teeth"
            break
        case 2:
            label.text = "Learn IOS development"
            break
        case 3:
            label.text = "Soccer practice"
            break
        case 4:
            label.text = "Eat ice cream"
            break
        default:
            break
        }
        
        return cell
    }
}

