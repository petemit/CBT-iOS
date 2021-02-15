//
//  ExplainSituation.swift
//  CBT Pal
//
//  Created by Peter Mitchell on 1/24/21.
//

import SwiftUI

struct ExplainSituation: View {
    @ObservedObject var logController: LogController
    
    var body: some View {
        ZStack {
            Color(colorGetter.getBackgroundColor())
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                
                TitleText("Describe the situation that made you feel upset.")
                   
                TextEditor(text: $logController.log.situation)
                    .frame(maxHeight: 400)
                    .cornerRadius(5.0)
                    .padding()
                NavigationLink(
                    destination: SelectEmotions(logController: logController)) {
                    ButtonText("Next")
                }
                .navButtonStyle()
                Spacer()
            }
        }
        
    }
}

struct ExplainSituation_Previews: PreviewProvider {
    static var previews: some View {
        ExplainSituation(logController: LogController())
    }
}
