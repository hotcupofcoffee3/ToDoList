//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Adam Moore on 3/22/18.
//  Copyright © 2018 Adam Moore. All rights reserved.
//

import UIKit

public var x = 5

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var toDoItemTextField: UITextField!
    
    @IBAction func addItemToToDoList(_ sender: UIButton) {
        
        if let item = toDoItemTextField.text {
            addToDoItem(item: item)
        }
        
        toDoItemTextField.text = nil
    }
        
    @IBAction func resetToDoList(_ sender: UIButton) {
        emptyToDoList()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadInitialToDoList()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*** Dismiss Keyboard ***/
    
    // When touched away from textfield.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // When hit "Enter"
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

