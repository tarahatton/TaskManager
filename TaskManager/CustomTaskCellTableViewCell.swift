//
//  CustomTaskCellTableViewCell.swift
//  TaskManager
//
//  Created by Shontara Hatton on 5/16/18.
//  Copyright © 2018 Shontara Hatton. All rights reserved.
//

import UIKit

class CustomTaskCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var taskNameLabel: UILabel!
    @IBOutlet weak var completedUncompleted: UISegmentedControl!
    @IBOutlet weak var taskDetailsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
        // Configure the view for the selected state
    }
    
    func setupCell(task: Task) {
        taskNameLabel.text = task.title
        taskDetailsLabel.text = task.details
        if task.completedTask {
            completedUncompleted.selectedSegmentIndex = 0
            
            
        } else {
            completedUncompleted.selectedSegmentIndex = 1
            
        }
        
    }
}

