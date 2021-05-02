//
//  SettingsView.swift
//  Localisation
//
//  Created by Leonid Nazarov on 21.04.2021.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("language")
    private var language = LocalizationService.shared.language
    
    @State private var myName = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("settings_language".localized(language))
                Menu("settings_language_button".localized(language)) {
                    Button {
                        LocalizationService.shared.language = .russian
                    } label: {
                        Text("Russian")
                        Image(systemName: "")
                    }
                    Button {
                        LocalizationService.shared.language = .english
                    } label: {
                        Text("English")
                        Image(systemName: "")
                    }
                }
            }
//            Spacer()
            Text("settings_language_footer".localized(language))
            NavigationLink(destination: SecondView()) {
                Text("Go to second")
            }
            
            TextField("My name", text: $myName)
            Text("myNameIs \(myName)")
//            Spacer()
        }
        .padding()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .environment(\.locale, .init(identifier: "en"))
    }
}
