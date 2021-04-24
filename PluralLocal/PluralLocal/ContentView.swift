//
//  ContentView.swift
//  PluralLocal
//
//  Created by Leonid Nazarov on 24.04.2021.
//

import SwiftUI

struct ContentView: View {
    var appleCount = 1
    var body: some View {
        Text("fruit-count \(appleCount)", tableName: "Plurals")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.locale, .init(identifier: "ru"))
    }
}
