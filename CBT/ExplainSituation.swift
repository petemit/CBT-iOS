//
//  ExplainSituation.swift
//  CBT Pal
//
//  Created by Peter Mitchell on 1/24/21.
//

import SwiftUI

struct ExplainSituation: View {
    @State var situation: String = ""
    var body: some View {
        
        ZStack {
            Color(colorGetter.getBackgroundColor())
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("Describe the situation that made you feel upset.")
                    .mukta(25)
                    .foregroundColor(.white)
                    .padding()
                TextEditor(text: $situation)
                    .frame(maxHeight: 400)
                    .cornerRadius(5.0)
                    .padding()
                Spacer()
            }
        }
        .navigationBarItems(leading: View)
//        NavigationLink(destination: Text("trying").navigationTitle("Page 2")) {
//            Text("Let's talk.")
//                .navigationBarTitle("Explain Situation", displayMode: .inline)
//        }
        
    }
}

struct ExplainSituation_Previews: PreviewProvider {
    static var previews: some View {
        ExplainSituation()
    }
}
