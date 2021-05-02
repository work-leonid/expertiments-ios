//
//  TestLocalWithEnum.swift
//  Localisation
//
//  Created by Leonid Nazarov on 26.04.2021.
//

import SwiftUI

struct TestLocalWithEnum: View {
    
    var name = "Leo"
    
    var body: some View {
        VStack {
            Text(Translation.name(name))
            Text(Translation.title)
        }
//        Text(Translation.nameString(name))
    }
}

struct TestLocalWithEnum_Previews: PreviewProvider {
    static var previews: some View {
        TestLocalWithEnum()
            .environment(\.locale, .init(identifier: "en"))
    }
}
