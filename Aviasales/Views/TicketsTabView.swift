//
//  TicketsTabView.swift
//  Aviasales
//
//  Created by Nurasyl on 04.06.2024.
//

import SwiftUI

struct TicketsTabView: View {
    @State var from: String = "Минск"
    @State var destination: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                Text("Поиск дешевых\nавиабилетов")
                    .foregroundStyle(Color.screenTitle)
                    .font(.SFProDisplay(ofSize: 22, weight: .semiBold))
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .padding(.bottom, 38)
                    .padding(.top, 26)
                
                VStack {
                    HStack {
                        Image(.search)
                            .padding(.leading, 8)
                        
                        VStack {
                            SearchInputView(value: $from, placeholder: "Откуда - Минск")
                            
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
                .frame(
                    width: geometry.size.width - 16
                )
                .background(Color.searchAreaBackground)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                
                VStack {
                    Text("Музыкально отлететь")
                        .foregroundStyle(Color.white)
                        .font(.SFProDisplay(ofSize: 22, weight: .semiBold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 32)
                        .padding(.top, 26)
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: 24) {
                            MusicianCardView(
                                id: 1,
                                artistName: "Die Antwoord",
                                destination: "Будапешт",
                                price: 5000
                            )
                            MusicianCardView(
                                id: 2,
                                artistName: "Socrat&Lera",
                                destination: "Санкт-Петербург",
                                price: 1999
                            )
                            MusicianCardView(
                                id: 3,
                                artistName: "Лампабикт",
                                destination: "Москва",
                                price: 2390
                            )
                        }
                    }
                }
                .frame(width: geometry.size.width - 16)
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.appBackground)
        }
    }
}

#Preview {
    TicketsTabView()
}
