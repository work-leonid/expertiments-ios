//
//  ContentView.swift
//  grid examples
//
//  Created by Leonid Nazarov on 12.05.2021.
//

import SwiftUI

struct ContentView: View {
    
    let cols: Int = 30
    let spacing: CGFloat = 2
    let circleSize = CGSize(width: 8, height: 8)
//    let items: Int = 1440 //
    let items: Int = 60
    
//    let data = Array(1...60).map { "item \($0)" }
    

    
    var body: some View {
        let columns: [GridItem] = Array(repeating: .init(.flexible(minimum: 8), spacing: spacing, alignment: .leading), count: cols)
        
            VStack() {
                Spacer()
                
                LazyVGrid(columns: columns, spacing: spacing) {
                    ForEach(0..<items) { i in
                        
                        Circle()
                            .foregroundColor(.green)
                            .frame(width: circleSize.width,
                                   height: circleSize.width)
                    }
                }
                
                Spacer()
            }
            .padding()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
