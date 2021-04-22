//
//  Favorites.swift
//  Save favourite to UserDefaults
//
//  Created by Leonid Nazarov on 19.04.2021.
//

import SwiftUI

class Favorites: ObservableObject {
//    because we don't want to store the entire struct but just the id which we can use to extract the entire struct
    private var tasks: Set<String>
    let defaults = UserDefaults.standard
    
    init() {
        let decoder = JSONDecoder()
        if let data = defaults.value(forKey: "Favorites") as? Data {
            let taskData = try? decoder.decode(Set<String>.self, from: data)
            tasks = taskData ?? []
        } else {
            tasks = []
        }
    }
    
    func getTaskIds() -> Set<String> {
        self.tasks
    }
    
    func isEmpty() -> Bool {
        tasks.count < 1
    }
    
    func contains(_ task: Task) -> Bool {
        tasks.contains(task.id)
    }
    
    func add(_ task: Task) {
        objectWillChange.send()
        tasks.insert(task.id)
        save()
    }
    
    func remove(_ task: Task) {
        objectWillChange.send()
        tasks.remove(task.id)
        save()
    }
    
    func save() {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(Favorites) {
            defaults.set(encoded, forKey: "Favorites")
        }
    }
}
