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
    @Environment(\.modelContext) var context
    var body: some View {
        List{
            ForEach(list,id:\.self){ item in
               TodoRow(item: item)
                .swipeActions{
                    Button(role:.destructive){
                        withAnimation{
                            context.delete(item)
                        }
                    }label: {
                        Label("Delete",systemImage: "trash")
                            .symbolVariant(.fill)
                    }
                }
            }
        }
    }
}

#Preview {
    TodoList()
}
