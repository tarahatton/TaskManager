//
//  TaskManager.swift
//  TaskManager
//
//  Created by Shontara Hatton on 5/17/18.
//  Copyright © 2018 Shontara Hatton. All rights reserved.
//

import UIKit
import RealmSwift

class TaskManager {
    
    static let shared = TaskManager()
    
    private init() {
        
    }

    var tasks: Results<Task>!
    
    let realm = try! Realm()
    
    func addTask(_ task: Task){
        try! realm.write {
            realm.add(task)
        }
    }
    func removeTask(_ task: Task) {
        try! realm.write {
            realm.delete(task)
        }
    }
    
    func getTask(index:Int) -> Task{
        return tasks[index]
        
    }
    func getTaskCount() -> Int {
        return tasks.count
    }
    
    func checkCompletedorUncompleted(task: Task) {
        try! realm.write {
            if task.completedTask {
                task.completedTask = false
            
            } else {
                task.completedTask = true
                task.dueDate = Date()
            }
        }
    }
}
