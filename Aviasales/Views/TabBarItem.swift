//
//  TabBarItem.swift
//  Aviasales
//
//  Created by Nurasyl on 05.06.2024.
//

import SwiftUI

struct TabBarItem: View {
    var title: String
    var icon: ImageResource
    
    var body: some View {
        VStack(spacing: 3) {
            Image(icon)
                .resizable()
                .scaledToFill()
                .frame(width: 24, height: 24)
            Text(title)
                .font(.SFProDisplay(ofSize: 10))
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    TabBarItem(title: "hello world", icon: .hotels)
}
