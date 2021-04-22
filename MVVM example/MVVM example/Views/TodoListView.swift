//
//  ContentView.swift
//  MVVM example
//
//  Created by Leonid Nazarov on 19.04.2021.
//

import SwiftUI



struct TodoListView: View {
    
    @ObservedObject var todoManager: TodoListManager
    
    var body: some View {
        NavigationView {
            ZStack {
                List {
                    ForEach(todoManager.items) { item in
                        NavigationLink(
                            destination: Text("Destination \(item.name)"),
                            label: {
                                Text(item.name)
                            })
                    }
                    .onDelete(perform: { indexSet in
                        todoManager.delete(at: indexSet)
                    })
                    .onMove(perform: { indices, newOffset in
                        todoManager.move(indices: indices, newOffset: newOffset)
                    })
                }
                .navigationBarTitle("Items")
                .toolbar(content: {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        EditButton()
                        Button(action: {
                            todoManager.addItem()
                        }, label: {
                            Image(systemName: "plus")
                        })
                    }
            })
                
                if todoManager.items.count == 0 {
                    Text("empty state")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TodoListView(todoManager: TodoListManager.emptyState())
            TodoListView(todoManager: TodoListManager.fullState())
        }
    }
}
