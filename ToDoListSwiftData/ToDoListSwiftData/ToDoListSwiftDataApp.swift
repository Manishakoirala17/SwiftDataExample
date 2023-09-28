//
//  ToDoListSwiftDataApp.swift
//  ToDoListSwiftData
//
//  Created by Manisha on 28/09/23.
//

import SwiftUI
import SwiftData

@main
struct ToDoListSwiftDataApp: App {
    var body: some Scene {
        WindowGroup {
            AddTodo()
        }
        .modelContainer(for:TodoItem.self)

    }
}
