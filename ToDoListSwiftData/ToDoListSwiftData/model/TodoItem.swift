//
//  TodoItem.swift
//  ToDoListSwiftData
//
//  Created by Manisha on 28/09/23.
//

import Foundation
import SwiftData

@Model
class TodoItem{
    var id:UUID
    var title:String
    var timestamp:Date
    var isCompleted:Bool
    var isImportant:Bool
    
    init(title: String = "", timestamp: Date = .now, isCompleted: Bool = false,isImportant:Bool = false) {
        self.id = UUID()
        self.title = title
        self.timestamp = timestamp
        self.isCompleted = isCompleted
        self.isImportant = isImportant
    }
}
