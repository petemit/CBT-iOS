//
//  MRegularText.swift
//  CBT Pal
//
//  Created by Peter Mitchell on 1/24/21.
//

import SwiftUI

extension Text {
    
    func mukta(_ size: CGFloat) -> some View {
        self
            .font(Font.custom("Mukta-Regular", size: size))
    }
}
