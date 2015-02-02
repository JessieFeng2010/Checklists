//
//  DataModel.swift
//  Checklists
//
//  Created by Jessie on 15-1-30.
//  Copyright (c) 2015年 Jessie. All rights reserved.
//

import Foundation

class DataModel {
    var lists = [Checklist]()
    
    init() {
        loadChecklists()
    }
    
    //MARK: - loading and saving
    func documentsDirectory() -> String {
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as [String]
        return paths[0]
    }
    
    func dataFilePath() -> String {
        return documentsDirectory().stringByAppendingPathComponent("Checklists.plist")
    }
    
    func saveChecklists() {
        let data = NSMutableData()
        let archiver = NSKeyedArchiver(forWritingWithMutableData: data)
        archiver.encodeObject(lists, forKey: "Checklists")
        archiver.finishEncoding()
        data.writeToFile(dataFilePath(), atomically: true)
    }
    
    func loadChecklists() {
        let path = dataFilePath()
        if NSFileManager.defaultManager().fileExistsAtPath(path) {
            let data = NSData(contentsOfFile: path)
            let unarchiver = NSKeyedUnarchiver(forReadingWithData: data!)
            lists = unarchiver.decodeObjectForKey("Checklists") as [Checklist]
            unarchiver.finishDecoding()
        }
    }
}
