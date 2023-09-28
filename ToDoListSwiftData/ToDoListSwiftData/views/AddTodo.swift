//
//  AddTodo.swift
//  ToDoListSwiftData
//
//  Created by Manisha on 28/09/23.
//

import SwiftUI
import SwiftData

struct AddTodo: View {
//    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) var context
    @Binding var isPresented:Bool
//    @State private var item:TodoItem = TodoItem(title: "", timestamp: .now, isCompleted: false)
    @State var title:String = ""
    @State var timestamp:Date = .now
    @State var isImportant:Bool = true
    var body: some View {
        List{
            TextField("New Title",text: $title)
            DatePicker("Choose Data",selection: $timestamp)
            Toggle("Important?",isOn: $isImportant)
            Button("Create"){
                let model = TodoItem(title: title,timestamp: timestamp,isImportant: isImportant)
                    context.insert(model)
                isPresented = false
//                dismiss()
            }
        }
        .navigationTitle("Create Todo")
    }
}

//#Preview {
//    AddTodo()
//}

