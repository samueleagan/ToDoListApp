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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    


}

extension UIViewController: UITableViewDelegate {
    
    func tableView(tableView: UITableView, selectRow indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

extension UIViewController: UITableViewDataSource {
    
}

