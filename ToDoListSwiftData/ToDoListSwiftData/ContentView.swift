//
//  ContentView.swift
//  ToDoListSwiftData
//
//  Created by Manisha on 28/09/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State var isPresented = false
    
    var body: some View {
        NavigationStack{
            VStack{
                    TodoList()
            }
            .toolbar{
                ToolbarItem{
                    Button(action:{
                        isPresented.toggle()
                    }){
                        Image(systemName: "plus")
                    }
                }
                ToolbarItem{
                    Button("Edit"){
                        print("edit")
                    }
                }
            }
            .sheet(isPresented: $isPresented, content: {
                NavigationStack{
                    AddTodo(isPresented:$isPresented)
                }
                .presentationDetents([.medium])
            })
        }
      
    }
}

#Preview {
    ContentView()
}
