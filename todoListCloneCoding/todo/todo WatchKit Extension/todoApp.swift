//
//  todoApp.swift
//  todo WatchKit Extension
//
//  Created by yeekim on 2022/08/03.
//

import SwiftUI

@main
struct todoApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environment(\.managedObjectContext, PersistentController.shared.container.viewContext)
        }
    }
}
