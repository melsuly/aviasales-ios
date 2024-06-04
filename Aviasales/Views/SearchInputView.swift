//
//  SearchInputView.swift
//  Aviasales
//
//  Created by Nurasyl on 04.06.2024.
//

import SwiftUI

struct SearchInputView: View {
    @Binding var value: String
    
    var placeholder: String
    
    var body: some View {
        Button(action: {
            print("open search")
        }, label: {
            Text(value.isEmpty ? placeholder : value)
                .foregroundStyle(value.isEmpty ? Color.searchPlaceholder : Color.searchText)
                .font(.SFProDisplay(ofSize: 16, weight: .semiBold))
            Spacer()
        })
    }
}

#Preview {
    struct Preview: View {
        @State var value: String = ""
        var body: some View {
            SearchInputView(value: $value, placeholder: "Куда - Турция")
        }
    }

    return Preview()
}
