//
//  StorageProvider.swift
//  HelloCoreData
//
//  Created by Leonid Nazarov on 18.05.2021.
//

import CoreData

class StorageProvider {
    let persistentContainer: NSPersistentContainer
    
    init() {
        persistentContainer = NSPersistentContainer(name: "Model")
        
        persistentContainer.loadPersistentStores(completionHandler: { description, error in
            if let error = error {
                fatalError("Core Data store failed to load with error: \(error.localizedDescription)")
            }
        })
    }
}
