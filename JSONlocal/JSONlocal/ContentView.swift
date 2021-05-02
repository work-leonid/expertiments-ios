//
//  ContentView.swift
//  JSONlocal
//
//  Created by Leonid Nazarov on 27.04.2021.
//

import SwiftUI

struct ColorPallete: Decodable {
    struct PalleteColor: Decodable {
        let sort_order: Int
        let description: String
        let red: Int
        let green: Int
        let blue: Int
        let alpha: Double
    }
    
    let pallete_name: String
    let pallete_info: String
    let pallet_colors: [PalleteColor]
}




struct ContentView: View {
    
    var body: some View {
        Text(js)
            .padding()
    }
    
    func jsondecode() -> ColorPallete {
        guard let sourceURL = Bundle.main.url(forResource: "FlatColors", withExtension: "json") else {
            fatalError("error")
        }

        // from url to Data
        guard let colorData = try? Data(contentsOf: sourceURL) else {
            fatalError("error message")
        }

        let decoder = JSONDecoder()
        guard let flatColors = try? decoder.decode(ColorPallete.self, from: colorData) else {
            fatalError("There was a problem")
        }
        return flatColors
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
