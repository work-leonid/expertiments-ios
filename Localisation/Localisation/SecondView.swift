//
//  SecondView.swift
//  Localisation
//
//  Created by Leonid Nazarov on 21.04.2021.
//

import SwiftUI

struct SecondView: View {
    
    @AppStorage("language")
    private var language = LocalizationService.shared.language
    
    var body: some View {
        VStack {
            Text("secondView_title".localized(language))
            Text("new text".localized(language))
        }
        .navigationBarTitle("second_screen_title".localized(language))
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
