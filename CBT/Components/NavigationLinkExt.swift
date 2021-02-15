//
//  MyNavigationButton.swift
//  CBT
//
//  Created by Peter Mitchell on 2/7/21.
//

import SwiftUI

extension NavigationLink {
    
    func navButtonStyle() -> some View {
        return self
            .buttonStyle(PlainButtonStyle())
            .background(Color.white)
            .frame(height:50, alignment: .center)
            .cornerRadius(25.0)
    }
}
