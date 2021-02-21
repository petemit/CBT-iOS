//
//  ContentView.swift
//  CBT Pal
//
//  Created by Peter Mitchell on 1/24/21.
//

import SwiftUI

let title = """
Cognitive
Behavioral
Therapy
Pal
"""


struct MainMenu: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    @Environment(\.verticalSizeClass) var verticalSizeClass: UserInterfaceSizeClass?
    
    @ObservedObject var logController: LogController
    var body: some View {
        NavigationView {
            ZStack {
                Color(colorGetter.getBackgroundColor())
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack {
                    Text(title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .mukta(30)
                    Spacer()
                    NavigationLink(
                        destination: ExplainSituation(logController: logController)) {
                        ButtonText("Start New Log")
                    }
                    .navButtonStyle()
                    Spacer()
                }
            }
        }.navigationViewStyle(StackNavigationViewStyle(), condition: true )
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu(logController: LogController())
    }
}
