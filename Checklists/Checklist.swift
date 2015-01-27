//
//  Checklist.swift
//  Checklists
//
//  Created by Jessie on 15-1-27.
//  Copyright (c) 2015年 Jessie. All rights reserved.
//

import UIKit

class Checklist: NSObject {
    var name = ""
    
    init(name: String) {
        self.name = name
        super.init()
    }
}
