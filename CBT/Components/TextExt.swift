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


func ButtonText(_ string: String) -> some View {
    Text(string)
        .mukta(20)
        .foregroundColor(.black)
        .padding()
}

func TitleText(_ string: String) -> some View {
    Text(string)
        .mukta(25)
        .foregroundColor(.white)
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
}
