//
//  colors.swift
//  CBT Pal
//
//  Created by Peter Mitchell on 1/24/21.
//

import Foundation
import SwiftUI




let mainBlue = UIColor(red: 0.20, green: 0.60, blue: 0.86, alpha: 1.00)
let mainDark = UIColor(red: 0.20, green: 0.29, blue: 0.37, alpha: 1.00)


struct ColorSchemeSelector {
    @Environment(\.colorScheme) var colorScheme
    
    func getBackgroundColor() -> UIColor {
        return (colorScheme == .dark ? mainBlue : mainDark)
    }
}
