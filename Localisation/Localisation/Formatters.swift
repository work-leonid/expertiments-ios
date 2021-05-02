//
//  Formatters.swift
//  Localisation
//
//  Created by Leonid Nazarov on 26.04.2021.
//

import SwiftUI

struct Formatters: View {
    
    var pressure: String {
        let formatter = PersonNameComponentsFormatter()
        var nameComponent = PersonNameComponents()
        
        nameComponent.familyName = "Isaaki"
        nameComponent.givenName = "Akiya"
        nameComponent.nickname = "Gogi"
        
        formatter.style = .abbreviated
        
        return formatter.string(from: nameComponent)
        
    }
    
    var body: some View {
        VStack {
            Text("\(pressure)")
        }
    }
}

struct Formatters_Previews: PreviewProvider {
    static var previews: some View {
        Formatters()
            .environment(\.locale, Locale(identifier: "ru"))
    }
}
