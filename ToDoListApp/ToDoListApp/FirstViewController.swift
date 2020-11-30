//
//  FirstViewController.swift
//  ToDoListApp
//
//  Created by student on 11/9/20.
//  Copyright © 2020 CodeWithChris. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var tasks = [Task]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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



