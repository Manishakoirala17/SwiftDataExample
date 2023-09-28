//
//  ContentView.swift
//  SwiftDataExample1
//
//  Created by Manisha on 27/09/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var context
    @Query private var items:[DataItem]
    @State var count = 0
    var body: some View {
        VStack {
            Text("Enter the button to add new Item!")
            Button("Tab Me"){
                count = count+1
                let item = DataItem(id:"1",name: "Item",password: "Hai")
                context.insert(item)
            }
            List{
                ForEach(items){ item in
                    HStack{
                        Text("\(item.name)")
                        Text("\(item.password)")
                        Spacer()
                        Button(action:{
                            item.name = "Updated"
                            try? context.save()
                        }){
                            Image(systemName: "pencil")
                        }
                    }
                   
                }
                .onDelete{ indexes in
                    for index in indexes{
                        context.delete(items[index])
                    }
                }
            }
           
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
