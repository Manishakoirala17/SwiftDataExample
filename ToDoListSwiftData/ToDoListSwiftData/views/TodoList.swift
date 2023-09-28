//
//  TodoList.swift
//  ToDoListSwiftData
//
//  Created by Manisha on 28/09/23.
//

import SwiftUI
import SwiftData

struct TodoList: View {
    @Query var list:[TodoItem]
    var body: some View {
        List{
            ForEach(list,id:\.self){ item in
                VStack(alignment: .leading){
                    Text("\(item.title)")
                    Text("\(item.timestamp)")
                }
            }
        }
    }
}

#Preview {
    TodoList()
}
