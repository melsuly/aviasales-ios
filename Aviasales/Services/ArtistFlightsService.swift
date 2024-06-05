//
//  ArtistFlightsService.swift
//  Aviasales
//
//  Created by Nurasyl on 05.06.2024.
//

import Foundation
import Combine

struct ArtistFlightsResponse: Decodable {
    let offers: [ArtistFlight]
}

protocol ArtistFlightsServiceProtocol {
    func fetchArtistFlights() -> AnyPublisher<ArtistFlightsResponse, Error>
}

class ArtistFlightsService: ArtistFlightsServiceProtocol {
    private let apiClient: APIClient
    
    init(apiClient: APIClient = .shared) {
        self.apiClient = apiClient
    }
    
    func fetchArtistFlights() -> AnyPublisher<ArtistFlightsResponse, Error> {
        return apiClient.request(url: "https://run.mocky.io/v3/214a1713-bac0-4853-907c-a1dfc3cd05fd")
    }
}
