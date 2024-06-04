//
//  Font+Extension.swift
//  Aviasales
//
//  Created by Nurasyl on 04.06.2024.
//

import SwiftUI

extension Font {
    enum SFProDisplayWeights: String {
        case regular = "Regular"
        case medium = "Medium"
        case semiBold = "SemiBold"
    }
    
    static func SFProDisplay(ofSize size: CGFloat, weight: SFProDisplayWeights = .regular) -> Font {
        return .custom("SFProDisplay-\(weight.rawValue)", size: size)
    }
}
