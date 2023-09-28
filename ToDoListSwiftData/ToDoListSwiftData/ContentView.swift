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
                Text("Hello world")
                   
            }
            .toolbar{
                ToolbarItem{
                    Button(action:{
                        isPresented.toggle()
                    }){
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $isPresented, content: {
                NavigationStack{
                    AddTodo()
                }
                .presentationDetents([.medium])
            })
        }
      
    }
}

#Preview {
    ContentView()
}
