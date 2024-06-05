//
//  ContentView.swift
//  Aviasales
//
//  Created by Nurasyl on 04.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TicketsTabView()
                .tabItem {
                    TabBarItem(title: "Авиабилеты", icon: .tickets)
                }
            HotelsTabView()
                .tabItem {
                    TabBarItem(title: "Отели", icon: .hotels)
                }
            KorocheTabView()
                .tabItem {
                    TabBarItem(title: "Короче", icon: .koroche)
                }
            SubscriptionsTabView()
                .tabItem {
                    TabBarItem(title: "Подписки", icon: .subscriptions)
                }
            ProfileTabView()
                .tabItem {
                    TabBarItem(title: "Профиль", icon: .profile)
                }
        }
        .tint(Color.tabItemActive)
    }
}

#Preview {
    ContentView()
}
