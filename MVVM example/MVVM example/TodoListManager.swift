//
//  TodoListManager.swift
//  MVVM example
//
//  Created by Leonid Nazarov on 19.04.2021.
//

import Foundation

class TodoListManager: ObservableObject {
    @Published var items: [Item] = []
    
    init(isForTest: Bool = false) {
        if isForTest {
            
        }
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        items.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func addItem() {
        items.append(Item(id: UUID(), name: "new item"))
    }
    
    func delete(at indexSet: IndexSet) {
        for index in indexSet {
            items.remove(at: index)
        }
    }
    
    static func emptyState() -> TodoListManager {
        let manager = TodoListManager()
        manager.items = []
        return manager
    }
    
    static func fullState() -> TodoListManager {
        let manager = TodoListManager()
        manager.items = [
            Item(id: UUID(), name: "first"),
            Item(id: UUID(), name: "second"),
            Item(id: UUID(), name: "third")
        ]
        return manager
    }
    
}
