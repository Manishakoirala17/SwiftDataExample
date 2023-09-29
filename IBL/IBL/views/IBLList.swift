//
//  IBLList.swift
//  IBL
//
//  Created by Manisha on 29/09/23.
//

import SwiftUI
import SwiftData

struct IBLList: View {
    @State var isAddPresented = false
    @Query(filter: #Predicate<IBLModel>{$0.selectIBL == "Invest"}) var invested:[IBLModel]
    @Query(filter: #Predicate<IBLModel>{$0.selectIBL == "Borrow"}) var borrowed:[IBLModel]
    @Query(filter: #Predicate<IBLModel>{$0.selectIBL == "Lend"}) var lended:[IBLModel]


    @Environment(\.modelContext) var context
    var body: some View {
        NavigationStack{
            List{
                Section("Invested"){
                    ForEach(invested,id: \.self){ item in
                        VStack(alignment: .leading){
                            Text("Type: \(item.selectIBL)")
                            Text("Money:\(item.money)")
                            Text(item.date, format: Date.FormatStyle().year().month().day())
                        }
                        .swipeActions{
                            Button(role:.destructive){
                                context.delete(item)
                            }label: {
                                Label("Delete",systemImage: "trash")
                                    .symbolVariant(.fill)
                                    .background(.red)
                            }
                        }
                    }
                }
                if borrowed.count != 0 {
                    Section("Borrowed"){
                        ForEach(borrowed,id: \.self){ item in
                            VStack(alignment: .leading){
                                Text("Type: \(item.selectIBL)")
                                Text("Money:\(item.money)")
                                Text(item.date, format: Date.FormatStyle().year().month().day())
                            }
                            .swipeActions{
                                Button(role:.destructive){
                                    context.delete(item)
                                }label: {
                                    Label("Delete",systemImage: "trash")
                                        .symbolVariant(.fill)
                                        .background(.red)
                                }
                            }
                        }
                    }
                }
                if lended.count != 0{
                    Section("Lended"){
                        ForEach(lended,id: \.self){ item in
                            VStack(alignment: .leading){
                                Text("Type: \(item.selectIBL)")
                                Text("Money:\(item.money)")
                                Text(item.date, format: Date.FormatStyle().year().month().day())
                                                                                       }
                            .swipeActions{
                                Button(role:.destructive){
                                    context.delete(item)
                                }label: {
                                    Label("Delete",systemImage: "trash")
                                        .symbolVariant(.fill)
                                        .background(.red)
                                }
                            }
                        }
                    }
                }
             
               
            }

            .navigationTitle("Your IBL Details")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem{
                    Button{
                        isAddPresented = true
                    }label: {
                        Label("Add",systemImage: "plus")
                    }
                }
            }
            .sheet(isPresented: $isAddPresented, content: {
                NewIBL(isPresented: $isAddPresented)
            })
        }
       
    }
    func formatDate(date:Date) -> DateFormatter{
        let formatter = DateFormatter()
        formatter.dateFormat = "E, dd MMM yyyy HH:mm:ss z"
        return formatter

    }
}

#Preview {
    IBLList()
}
