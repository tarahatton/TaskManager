//
//  Task.swift
//  TaskManager
//
//  Created by Shontara Hatton on 5/17/18.
//  Copyright © 2018 Shontara Hatton. All rights reserved.
//

import Foundation
import RealmSwift

class Task: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var details: String = ""
    @objc dynamic var dueDate: Date = Date()
    @objc dynamic var createDate: Date = Date()
    @objc dynamic var completedTask = false 
    
    
}
