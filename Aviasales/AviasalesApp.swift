//
//  AviasalesApp.swift
//  Aviasales
//
//  Created by Nurasyl on 04.06.2024.
//

import SwiftUI

@main
struct AviasalesApp: App {
    init() {
        setupTabBarAppearance()
    }
    
    func setupTabBarAppearance() {
        UITabBar.appearance().unselectedItemTintColor = UIColor.tabItem
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
