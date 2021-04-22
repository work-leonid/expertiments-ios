//
//  ContentView.swift
//  Localisation
//
//  Created by Leonid Nazarov on 21.04.2021.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("language")
    private var language = LocalizationService.shared.language
    
    var body: some View {
        NavigationView {
            SettingsView()
                .navigationBarTitle("main_screen_title".localized(language))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
