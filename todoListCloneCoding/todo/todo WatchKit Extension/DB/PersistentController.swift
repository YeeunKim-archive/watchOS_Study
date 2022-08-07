//
//  PersistentController.swift
//  todo WatchKit Extension
//
//  Created by yeekim on 2022/08/03.
//

import Foundation
import CoreData

struct PersistentController {
    
    static let shared = PersistentController()
    
    let container: NSPersistentContainer
    
    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "doit")
        if inMemory {
            container.persistentStoreDescriptions.first?.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores{ (storeDesc, error) in
            if let error = error as NSError? {
                fatalError("Failed to load container \(error)")
            }
        }
    }
}
