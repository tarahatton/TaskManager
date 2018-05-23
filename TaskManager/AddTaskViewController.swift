//
//  AddTaskViewController.swift
//  TaskManager
//
//  Created by Shontara Hatton on 5/9/18.
//  Copyright © 2018 Shontara Hatton. All rights reserved.
//

import UIKit


class AddTaskViewController: UIViewController {
    
    
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var addTaskTextField: UITextField!
    
    var selectedDate: String?
    
        
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        var newTask = Task()
        newTask.title = addTaskTextField.text!
        newTask.dueDate = datePicker.date
        TaskManager.shared.addTask(newTask)
        self.performSegue(withIdentifier: "unwindToMain", sender: self)
        //Get the text from the title field, and the date from the date picker, and make a new task object and save it in the task manager
        //Unwind back to the main screen here
        
    }
    
    @IBAction func pickerViewChanged(_ sender: Any) {
        datePicker.datePickerMode = UIDatePickerMode.date
        var dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM dd yyyy"
        selectedDate = dateFormatter.string(from: datePicker.date)
    }
    
    
        //let genres = [ ]

}
