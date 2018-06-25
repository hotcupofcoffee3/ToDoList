//
//  FirstViewController.swift
//  ToDoList
//
//  Created by Adam Moore on 3/22/18.
//  Copyright © 2018 Adam Moore. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var currentToDoListArray = [String]()
    
    @IBOutlet weak var toDoListTable: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        currentToDoListArray = returnedToDoList()
        
        return currentToDoListArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = "\(indexPath.row + 1). \(currentToDoListArray[indexPath.row])"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            removeToDoItem(at: indexPath.row)
            
            toDoListTable.reloadData()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        toDoListTable.reloadData()
    }
    
}






