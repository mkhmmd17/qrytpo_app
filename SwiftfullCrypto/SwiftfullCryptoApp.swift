//
//  SwiftfullCryptoApp.swift
//  SwiftfullCrypto
//
//  Created by muslim on 12.04.2022.
//

import SwiftUI

@main
struct SwiftfullCryptoApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
