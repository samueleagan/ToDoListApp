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
        
    }
    
}
