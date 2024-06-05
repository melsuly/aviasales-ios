//
//  FastActionsView.swift
//  Aviasales
//
//  Created by Nurasyl on 05.06.2024.
//

import SwiftUI

struct FastActionsView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            FastActionView(
                title: "Сложный маршрут",
                accentColor: .green,
                icon: .command
            )
            FastActionView(
                title: "Куда угодно",
                accentColor: .blue,
                icon: .globe
            )
            FastActionView(
                title: "Выходные",
                accentColor: .darkBlue,
                icon: .calendar
            )
            FastActionView(
                title: "Горячие билеты",
                accentColor: .red,
                icon: .fire
            )
        }
    }
}

struct FastActionView: View {
    let title: String
    let accentColor: ColorResource
    let icon: ImageResource
    
    var body: some View {
        VStack(spacing: 8) {
            ZStack {
                Image(icon)
                    .foregroundStyle(Color.white)
                    .padding(12)
            }
            .background(Color(accentColor))
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
            Text(title)
                .font(.SFProDisplay(ofSize: 14))
                .foregroundStyle(Color.white)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    FastActionsView()
        .background(Color.searchSheetBackground)
}
