//
//  ContentView.swift
//  Save favourite to UserDefaults
//
//  Created by Leonid Nazarov on 19.04.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var tasks: [Task] = [
        Task(title: "first"),
        Task(title: "second")
    ]
    
    @ObservableObject var favourites = Favorites()
    
    var body: some View {
        ForEach(self.tasks, id: \.id) { task in
          VStack {
            Text(task.title)
            Button(action: {
              if self.favorites.contains(task) {
                  self.favorites.remove(task)
              } else {
                  self.favorites.add(task)
              }
            }) {
              HStack {
                  Image(systemName: favorites.contains(task) ? "heart.fill" : "heart").foregroundColor(favorites.contains(task) ? .red : .white)
              }
            }
          }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
