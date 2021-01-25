//
//  ContentView.swift
//  CBT Pal
//
//  Created by Peter Mitchell on 1/24/21.
//

import SwiftUI

struct MainMenu: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(colorGetter.getBackgroundColor())
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack {
                    Text("""
Cognitive
Behavioral
Therapy
Pal
""")
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .mukta(30)
                    Spacer()
                    NavigationLink(
                        destination: ExplainSituation()) {
                        Text("Start New Log")
                            .mukta(20)
                            .foregroundColor(.black)
                            .padding()
                    }
                    .buttonStyle(
                        PlainButtonStyle()
                    )
                    .background(Color.white)
                    .frame(height:50, alignment: .center)
                    .cornerRadius(25.0)
    
                    //                Button(cornerRadius: 25.0)
                    //                    .fill(Color.white)
                    //                    .overlay(
                    //
                    //                    )
                    //                    .frame(height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    //                    .padding()
                    
                    
                    Spacer()
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
    }
}
