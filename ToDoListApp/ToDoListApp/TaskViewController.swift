//
//  TaskViewController.swift
//  ToDoListApp
//
//  Created by student on 12/3/20.
//  Copyright © 2020 CodeWithChris. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var task: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = task
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Delete", style: .done, target: self, action: #selector(deleteTask))
    }
    
    @objc func deleteTask() {
        
     //   let newCount = count -1
        
      //  UserDefaults().setValue(newCount, forKey: "count")
      //  UserDefaults().setValue(nil, forKey: "task_\(currentPosition)")
        
    }
    
    
    


}
