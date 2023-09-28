//
//  SwiftDataExample1App.swift
//  SwiftDataExample1
//
//  Created by Manisha on 27/09/23.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataExample1App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for:DataItem.self)
    }
}
