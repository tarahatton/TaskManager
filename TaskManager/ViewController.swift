//
//  ViewController.swift
//  TaskManager
//
//  Created by Shontara Hatton on 5/9/18.
//  Copyright © 2018 Shontara Hatton. All rights reserved.
//use iOS Video Game Library

import UIKit

class ViewController: UIViewController/*, UITableViewDelegate, UITableViewDataSource */{
    
    let taskManager = TaskManager.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.delegate = self
        //tableView.dataSource = self
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //tableView.reloadData
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return taskManager.getTaskCount()
}
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell") as! CustomTaskCellTableViewCell
        cell.setupCell(task: TaskManager.shared.getTask(index: indexPath.row))
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    @IBAction func unwindToVC1(segue:UIStoryboardSegue) { }
    
    
}


