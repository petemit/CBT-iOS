//
//  ViewExt.swift
//  CBT
//
//  I'm currently not using this functionality, but this is a way to adapt the style based on orientation
//  https://stackoverflow.com/a/62622280/8106988
//

import SwiftUI

extension View {
    public func navigationViewStyle<S>(_ style: S, condition: Bool) -> some View where S : NavigationViewStyle {
        if condition {
            return AnyView(self.navigationViewStyle(style))
        } else {
            return AnyView(self)
        }
    }
}
