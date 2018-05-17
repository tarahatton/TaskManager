//
//  CustomTaskCellTableViewCell.swift
//  TaskManager
//
//  Created by Shontara Hatton on 5/16/18.
//  Copyright © 2018 Shontara Hatton. All rights reserved.
//

import UIKit

class CustomTaskCellTableViewCell: UITableViewCell {

    @IBOutlet weak var completedUncompleted: UISegmentedControl!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    
        // Configure the view for the selected state
    }
    
    func setupCell(task: Task) {
            nameLabel.text = game.title
            genreLabel.text = game.genre
            if game.availability {
                availableLabel.text = "Available"
                availableLabel.backgroundColor = #colorLiteral(red: 0.3882352941, green: 0.8549019608, blue: 0.2196078431, alpha: 1)
            } else {
                availableLabel.text = "Not Available"
                availableLabel.backgroundColor = #colorLiteral(red: 1, green: 0.231372549, blue: 0.1882352941, alpha: 1)    }

}
