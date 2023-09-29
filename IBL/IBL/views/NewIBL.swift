//
//  NewIBL.swift
//  IBL
//
//  Created by Manisha on 29/09/23.
//

import SwiftUI


struct NewIBL: View {
    @State var type:String = "Invest"
    @State var money:Int = 0
    @State var date:Date = .now
    @Binding var isPresented:Bool
    @Environment(\.modelContext) private var context
    
    var types = ["Invest","Lend","Borrow"]
    var body: some View {
        NavigationStack{
            Form{
                Picker("Select IBL", selection: $type) {
                    ForEach(types,id:\.self) { option in
                        Text(option)
                    }
                }

                TextField("Money", value: $money, formatter: NumberFormatter())
                DatePicker("Date",selection: $date)
                Button("Add"){
                    context.insert(IBLModel(selectIBL: type,money:money))
                    isPresented = false
                }
            }
            .navigationTitle("New IBL")
        }
        .presentationDetents([.medium])

      
    }
}

#Preview {
    NewIBL(isPresented: .constant(true))
}
