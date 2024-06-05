//
//  TicketsTabView.swift
//  Aviasales
//
//  Created by Nurasyl on 04.06.2024.
//

import SwiftUI
import BottomSheet

struct TicketsTabView: View {
    @ObservedObject var viewModel: TicketsTabViewModel = TicketsTabViewModel()
    
    @State var from: String = "Минск"
    @State var destination: String = ""
    
    @State var isSearchPresented: Bool = true
    @State var bottomSheetPosition: BottomSheetPosition = .hidden
    
    func showSearchBottomSheet() {
        bottomSheetPosition = .relative(1)
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 32) {
                VStack(spacing: 38) {
                    Text("Поиск дешевых\nавиабилетов")
                        .foregroundStyle(Color.screenTitle)
                        .font(.SFProDisplay(ofSize: 22, weight: .semiBold))
                        .multilineTextAlignment(.center)
                        .lineLimit(.max)
                        
                    
                    VStack {
                        HStack(spacing: 0) {
                            Image(.search)
                                .padding(.leading, 8)
                            
                            VStack(spacing: 8) {
                                SearchInputView(value: $from, action: showSearchBottomSheet, placeholder: "Откуда - Минск")
                                
                                Divider()
                                    .background(Color.searchDivider)
                                
                                SearchInputView(value: $destination, placeholder: "Куда - Турция")
                            }
                            .padding(16)
                        }
                        .background(Color.gray4)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        .padding(16)
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color.searchAreaBackground)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                }
                .padding(.top, 26)
                .padding(.horizontal, 16)
                
                VStack(spacing: 26) {
                    Text("Музыкально отлететь")
                        .foregroundStyle(Color.white)
                        .font(.SFProDisplay(ofSize: 22, weight: .semiBold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 16)
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: 24) {
                            ForEach(viewModel.artistFlights, id: \.id) { artistFlight in
                                MusicianCardView(artistFlight: artistFlight)
                            }
                        }
                    }
                    .contentMargins(.horizontal, 16)
                }
                .frame(maxWidth: .infinity)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .background(Color.appBackground)
        }
        .onAppear {
            viewModel.fetchArtistFlights()
        }
        .bottomSheet(bottomSheetPosition: $bottomSheetPosition, switchablePositions: [.relative(0), .relative(1)]) {
            SearchSheetView()
        }
        .enableBackgroundBlur(false)
        .enableSwipeToDismiss(true)
        .dragIndicatorColor(.searchSheetDrag)
        .showCloseButton()
        .onDismiss {
            bottomSheetPosition = .hidden
        }
        .background(Color.searchSheetBackground)
    }
}

#Preview {
    TicketsTabView()
}
