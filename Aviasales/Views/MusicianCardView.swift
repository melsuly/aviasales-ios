//
//  MusicianCardView.swift
//  Aviasales
//
//  Created by Nurasyl on 04.06.2024.
//

import SwiftUI

struct MusicianCardView: View {
    let artistFlight: ArtistFlight
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image("artist_\(artistFlight.id)")
                .resizable()
                .scaledToFill()
                .frame(width: 132, height: 132)
                .clipShape(RoundedRectangle(cornerRadius: 16))
    
            Text(artistFlight.title)
                .foregroundStyle(Color.white)
                .font(.SFProDisplay(ofSize: 16, weight: .semiBold))
            VStack(alignment: .leading, spacing: 4) {
                Text(artistFlight.town)
                    .foregroundStyle(Color.white)
                    .font(.SFProDisplay(ofSize: 14))
                HStack(alignment: .center) {
                    Image(.plane)
                    Text("от \(artistFlight.price.value.getFormattedCurrency()) ₽ ")
                        .foregroundStyle(Color.white)
                        .font(.SFProDisplay(ofSize: 14))
                }
            }
        }
            
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    MusicianCardView(artistFlight: ArtistFlight(id: 1, title: "Die Antwoord", town: "Будапешт", price: .init(value: 22664)))
        .background(Color.appBackground)
}
