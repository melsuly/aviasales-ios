//
//  SearchSheetView.swift
//  Aviasales
//
//  Created by Nurasyl on 05.06.2024.
//

import SwiftUI

struct SearchSheetView: View {
    @State var from: String = "Минск"
    @State var destination: String = ""
    
    @State var isFromSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 26) {
            VStack(spacing: 8) {
                HStack(alignment: .center, spacing: 8) {
                    Image(.flight)
                        .foregroundStyle(Color.searchIcon)
                    TextField("", text: $from, prompt: Text("Откуда - Минск").foregroundStyle(Color.searchPlaceholder))
                        .foregroundStyle(Color.searchText)
                        .onTapGesture {
                            isFromSelected = true
                        }
                }
                
                Divider()
                    .background(Color.searchDivider)
                
                HStack(alignment: .center, spacing: 8) {
                    Image(.search)
                        .foregroundStyle(Color.searchIcon)
                    TextField("", text: $destination, prompt: Text("Куда - Турция").foregroundStyle(Color.searchPlaceholder))
                        .foregroundStyle(Color.searchText)
                        .onTapGesture {
                            isFromSelected = false
                        }
                }
            }
            .padding(16)
            .background(Color.searchAreaBackground)
            
            if isFromSelected {
                DestinationsListView()
            } else {
                FastActionsView()
                
                DestinationsListView()
            }
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .background(Color.searchSheetBackground)
    }
}

#Preview {
    SearchSheetView()
}
