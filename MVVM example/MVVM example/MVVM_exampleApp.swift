//
//  MVVM_exampleApp.swift
//  MVVM example
//
//  Created by Leonid Nazarov on 19.04.2021.
//

import SwiftUI

@main
struct MVVM_exampleApp: App {
    @StateObject var todoManager = TodoListManager()
    
    var body: some Scene {
        WindowGroup {
            TodoListView(todoManager: todoManager)
        }
    }
}
