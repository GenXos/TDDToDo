//
//  ItemManager.swift
//  TDDToDo
//
//  Created by Todd Fields on 2016-10-13.
//  Copyright © 2016 Skullgate Studios. All rights reserved.
//

import Foundation

class ItemManager {
  
    
    var toDoCount = 0
    var doneCount = 0
    
    private var toDoItems = [ToDoItem]()
    
    func addItem(item: ToDoItem) {
        
        toDoCount += 1
        toDoItems.append(item)
    }
    
    func itemAtIndex(index: Int) -> ToDoItem {
        
        return toDoItems[index]
    }
    
    func checkItemAtIndex(index: Int) {
        
        toDoCount -= 1
        doneCount += 1
    }
}
