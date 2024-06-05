//
//  ArtistFlight.swift
//  Aviasales
//
//  Created by Nurasyl on 05.06.2024.
//

import Foundation

struct ArtistFlight: Decodable, Identifiable {
    
    struct Price: Decodable {
        let value: Int
    }
    
    let id: Int
    let title: String
    let town: String
    let price: Price
}
