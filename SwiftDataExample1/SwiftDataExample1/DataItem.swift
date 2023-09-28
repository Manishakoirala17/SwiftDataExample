//
//  DataItem.swift
//  SwiftDataExample1
//
//  Created by Manisha on 27/09/23.
//

import Foundation
import SwiftData

@Model

class DataItem{
    @Attribute(.externalStorage) var id:String
    var name:String
    @Transient var password:String = ""
    init(id:String,name: String,password:String) {
        self.id = id
        self.name = name
        self.password = password
    }
}
