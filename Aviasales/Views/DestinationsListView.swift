//
//  DestinationsListView.swift
//  Aviasales
//
//  Created by Nurasyl on 05.06.2024.
//

import SwiftUI

struct DestinationsListView: View {
    var body: some View {
        VStack {
            DestinationsListItem()
            DestinationsListItem()
            DestinationsListItem()
            DestinationsListItem()
        }
        .padding(16)
        .background(Color.gray3)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

struct DestinationsListItem: View {
    var body: some View {
        VStack(spacing: 8) {
            HStack(spacing: 8) {
                Image(.artist1)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Стамбул")
                        .foregroundStyle(Color.white)
                        .font(.SFProDisplay(ofSize: 16, weight: .semiBold))
                    Text("Популярное направление")
                        .foregroundStyle(Color.gray5)
                        .font(.SFProDisplay(ofSize: 14))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.vertical, 8)
            Divider()
                .background(Color.searchDivider)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    DestinationsListView()
}
