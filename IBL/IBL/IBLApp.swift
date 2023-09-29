//
//  IBLApp.swift
//  IBL
//
//  Created by Manisha on 29/09/23.
//

import SwiftUI
import SwiftData

@main
struct IBLApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: IBLModel.self)

        }
    }
}
