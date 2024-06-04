//
//  Int+Extension.swift
//  Aviasales
//
//  Created by Nurasyl on 04.06.2024.
//

import Foundation

extension Int {
    func getFormattedCurrency() -> String {
        let formatter = NumberFormatter()
        formatter.groupingSize = 3
        formatter.groupingSeparator = " "
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 0
        return formatter.string(from: self as NSNumber) ?? ""
    }
}
