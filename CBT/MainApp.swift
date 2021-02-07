//
//  CBT_PalApp.swift
//  CBT Pal
//
//  Created by Peter Mitchell on 1/24/21.
//

import SwiftUI

@main
struct MainApp: App {
    var body: some Scene {
        WindowGroup {
            MainMenu(logController: LogController())
        }
    }
}

var colorGetter: ColorSchemeSelector = ColorSchemeSelector()
