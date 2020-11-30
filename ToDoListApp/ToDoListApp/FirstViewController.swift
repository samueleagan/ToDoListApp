//
//  FirstViewController.swift
//  ToDoListApp
//
//  Created by student on 11/9/20.
//  Copyright © 2020 CodeWithChris. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var textField: UITextField!
    
    var tasks = [Task]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapAddButton(_ sender: UIButton) {
        if let textItem = textField.text, !textItem.isEmpty {
            tasks.append(Task(taskText: textItem))

            tableView.beginUpdates()
            tableView.insertRows(at: [IndexPath.init(row: tasks.count-1, section: 0)], with: .automatic)
            tableView.endUpdates()
        }
        textField.text = nil
        
    }
    

}

extension FirstViewController: UITableViewDelegate {
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

extension FirstViewController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row].taskText
        return cell
    }
    
    
}



