//
//  ContentView.swift
//  SwiftfullCrypto
//
//  Created by muslim on 12.04.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                Text("Accent Color")
                    .foregroundColor(.theme.accent)
                
                Text("Secondary Text COlor")
                    .foregroundColor(.theme.secondary)
                
                Text("Red COlor")
                    .foregroundColor(.theme.red)
                
                Text("Green Color")
                    .foregroundColor(.theme.green)
            }
            .font(.headline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
