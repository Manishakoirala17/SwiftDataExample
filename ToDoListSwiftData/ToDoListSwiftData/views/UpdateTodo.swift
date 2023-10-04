//
//  UpdateTodo.swift
//  ToDoListSwiftData
//
//  Created by Manisha on 29/09/23.
//

import SwiftUI

struct UpdateTodo: View {
        @Environment(\.modelContext) var context

        @Bindable var item:TodoItem
        var body: some View {
            VStack{
                List{
                    TextField("New Title",text: $item.title)
                    DatePicker("Choose Data",selection: $item.timestamp)
                    Toggle("Important?",isOn: $item.isImportant)
                    
                }
                VStack{
                    Text("Tags:")
                    ForEach(item.tag ?? []){ tag in
                        Text(tag.name)
                            .padding()
                            .overlay{
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(tag.color.toSwiftUiColor())
                            }
                            .onTapGesture {
                                if let index = item.tag?.firstIndex(where:{$0 == tag}){
                                    item.tag?.remove(at:index)
                                }
                            }
                    }
                }
                Button("Add Tag"){
                    let tag = Tags(name: "Test Tag", color: RGBColor(red: 2, green: 2, blue: 2))
                    item.tag?.append(tag)
                }
            }
           
            .navigationTitle("Update Todo")
        }
    }

