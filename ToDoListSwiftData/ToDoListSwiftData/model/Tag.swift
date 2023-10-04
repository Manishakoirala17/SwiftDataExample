//
//  Tag.swift
//  ToDoListSwiftData
//
//  Created by Manisha on 29/09/23.
//

import Foundation
import SwiftData

@Model
final class Tags{
    var name:String
    var todos:[TodoItem]?
    var color:RGBColor
    init(name: String,color:RGBColor) {
        self.name = name
        self.color = color
    }
}
