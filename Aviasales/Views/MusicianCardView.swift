//
//  MusicianCardView.swift
//  Aviasales
//
//  Created by Nurasyl on 04.06.2024.
//

import SwiftUI

struct MusicianCardView: View {
    let id: Int
    let artistName: String
    let destination: String
    let price: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image("artist_\(id)")
                .resizable()
                .scaledToFill()
                .frame(width: 132, height: 132)
                .clipShape(RoundedRectangle(cornerRadius: 16))
    
            Text(artistName)
                .foregroundStyle(Color.white)
                .font(.SFProDisplay(ofSize: 16, weight: .semiBold))
            VStack(alignment: .leading, spacing: 4) {
                Text(destination)
                    .foregroundStyle(Color.white)
                    .font(.SFProDisplay(ofSize: 14))
                HStack(alignment: .center) {
                    Image(.plane)
                    Text("от \(price.getFormattedCurrency()) ₽ ")
                        .foregroundStyle(Color.white)
                        .font(.SFProDisplay(ofSize: 14))
                }
            }
        }
            
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    MusicianCardView(
        id: 1, artistName: "Die Antwoord", destination: "Будапешт", price: 22664
    )
        .background(Color.appBackground)
}
