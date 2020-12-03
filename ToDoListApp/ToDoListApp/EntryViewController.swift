//
//  EntryViewController.swift
//  ToDoListApp
//
//  Created by student on 12/3/20.
//  Copyright © 2020 CodeWithChris. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var field: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(saveTask))

       
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        saveTask()
        
        
        return true
    }
    
    
     @objc func saveTask() {
        
        guard let text = field.text, !text.isEmpty else {
            return
        }
        
        
        
    }

   

}
