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
                    Label("Авиабилеты", image: .tickets)
                        .font(.SFProDisplay(ofSize: 10))
                        
                }
            HotelsTabView()
                .tabItem {
                    Label("Отели", image: .hotels)
                        .font(.SFProDisplay(ofSize: 10))
                        .tint(Color.tabItemActive)
                }
            KorocheTabView()
                .tabItem {
                    Label("Короче", image: .koroche)
                        .font(.SFProDisplay(ofSize: 10))
                }
            SubscriptionsTabView()
                .tabItem {
                    Label("Подписки", image: .subscriptions)
                        .font(.SFProDisplay(ofSize: 10))
                }
            ProfileTabView()
                .tabItem {
                    Label("Профиль", image: .profile)
                        .font(.SFProDisplay(ofSize: 10))
                }
        }
        .tint(Color.tabItemActive)
    }
}

#Preview {
    ContentView()
}
