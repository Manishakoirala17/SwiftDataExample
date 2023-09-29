//
//  IBLModel.swift
//  IBL
//
//  Created by Manisha on 29/09/23.
//

import Foundation
import SwiftData

@Model
class IBLModel{
    var id:UUID
    var selectIBL:String
    var money:Int
    var date:Date
    
    init(id: UUID = UUID(), selectIBL: String = "Invest", money: Int = 0,date:Date = .now) {
        self.id = id
        self.selectIBL = selectIBL
        self.money = money
        self.date = date
    }
  
}
