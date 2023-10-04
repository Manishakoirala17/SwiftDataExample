//
//  TodoRow.swift
//  ToDoListSwiftData
//
//  Created by Manisha on 29/09/23.
//

import SwiftUI

struct TodoRow: View {
    var item:TodoItem
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("\(item.title)")
                Text("\(item.timestamp,format: Date.FormatStyle(date: .numeric,time: .standard))")
            }
            Spacer()
            NavigationLink{
                UpdateTodo(item: item)
            }label: {
                Text("Edit")
            }
        }    }
}

//#Preview {
//    TodoRow()
//}
