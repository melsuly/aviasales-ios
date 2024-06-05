//
//  TicketsTabViewModel.swift
//  Aviasales
//
//  Created by Nurasyl on 05.06.2024.
//

import Foundation
import Combine

class TicketsTabViewModel: ObservableObject {
    
    private var cancellables = Set<AnyCancellable>()
    
    let artistFlightsService: ArtistFlightsServiceProtocol
    
    @Published var artistFlights: [ArtistFlight] = []
    
    init(artistFlightsService: ArtistFlightsServiceProtocol = ArtistFlightsService()) {
        self.artistFlightsService = artistFlightsService
    }
    
    func fetchArtistFlights() {
        artistFlightsService.fetchArtistFlights()
            .sink { completion in
                print(completion)
            } receiveValue: { result in
                self.artistFlights = result.offers
            }
            .store(in: &cancellables)
    }
    
}
