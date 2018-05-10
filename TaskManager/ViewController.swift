//
//  ViewController.swift
//  TaskManager
//
//  Created by Shontara Hatton on 5/9/18.
//  Copyright © 2018 Shontara Hatton. All rights reserved.
//use iOS Video Game Library

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

