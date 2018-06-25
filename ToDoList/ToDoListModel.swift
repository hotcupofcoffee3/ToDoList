//
//  ToDoListModel.swift
//  ToDoList
//
//  Created by Adam Moore on 3/23/18.
//  Copyright © 2018 Adam Moore. All rights reserved.
//

import Foundation

let toDoListKey = "toDoList"

func loadInitialToDoList() {
    if UserDefaults.standard.object(forKey: toDoListKey) == nil {
        UserDefaults.standard.set([], forKey: toDoListKey)
    }
}

func returnedToDoList() -> [String] {
    var array = [String]()
    if let toDoList = UserDefaults.standard.object(forKey: toDoListKey) as? [String] {
        array = toDoList
    }
    return array
}

func addToDoItem(item: String) {
    if var toDoList = UserDefaults.standard.object(forKey: toDoListKey) as? [String] {
        toDoList.append(item)
        UserDefaults.standard.set(toDoList, forKey: toDoListKey)
        print("Add item: \(item). Array is now: \(toDoList)")
    }
}

func removeToDoItem(at index: Int) {
    if var toDoList = UserDefaults.standard.object(forKey: toDoListKey) as? [String] {
        let item = toDoList.remove(at: index)
        UserDefaults.standard.set(toDoList, forKey: toDoListKey)
        print("Removed item: \(item). Array is now: \(toDoList)")
    }
}

func emptyToDoList() {
    UserDefaults.standard.set([], forKey: toDoListKey)
}
