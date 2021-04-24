//
//  ContentView.swift
//  LocalisationStandart
//
//  Created by Leonid Nazarov on 21.04.2021.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    let name = "Bond"
    let age = 20
    var appleCount = 2
    let title = LocalizedStringKey("mySampleTitle")
    let title2 = LocalizedStringKey("\(FirstPage.title.localized)")
    
    var body: some View {
        VStack(spacing: 30) {
            
            Button("Open App Settings") {
                UIApplication.shared.open(URL(string: UIApplication.openSettingsURLString)!)
            }
            
            Text("\(Bundle.main.preferredLocalizations.first!)")
            
            Text(Localization.FirstPage.title.localized)
                .foregroundColor(.red)
            
            
            Text("my Sample Interpolation Text \(name).")
            
            Text("myNameIs \(name)")
            Text("myAge \(age)")
            
            Text("NumberAndString \(name).")
            
            Text("fruit-count \(appleCount)", tableName: "Plurals")
            
            Text(LocalizedStringKey("myNameIs \(name) and \(age)."))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.locale, .init(identifier: "ru"))
    }
}
