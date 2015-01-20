//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Jessie on 15-1-14.
//  Copyright (c) 2015年 Jessie. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject, NSCoding {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
    
    override init() {
        super.init()
    }
    
    //saving or encoding the objects
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(text, forKey: "Text")
        aCoder.encodeBool(checked, forKey: "Checked")
    }
    
    //loading or decoding the objects
    required init(coder aDecoder: NSCoder) {
        super.init()
    }
}
