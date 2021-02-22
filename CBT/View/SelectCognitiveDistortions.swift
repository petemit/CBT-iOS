//
//  SelectCognitiveDistortions.swift
//  CBT
//
//  Created by Peter Mitchell on 2/21/21.
//

import SwiftUI

struct SelectCognitiveDistortions: View {
    @ObservedObject var logController: LogController
    
    var body: some View {
        ZStack {
            Color(colorGetter.getBackgroundColor())
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading) {
                TitleText("Which Cognitive Distortion Matches That Negative Thought Most Accurately?")
                List {
                    ForEach(logController.log.negativeThoughts) { thought in
                        ThoughtAnalysisRow(thought: thought)
                    }
                }
                .padding()
                
                NavigationLink(
                    destination: PositiveThoughts(logController: logController)) {
                    ButtonText("Next")
                        .padding()
                }
                .navButtonStyle()
                .frame(maxWidth: .infinity, alignment: .center)
                
                Spacer()
            }
        }
    }
}

struct SelectCognitiveDistortions_Previews: PreviewProvider {
    static func createExampleLog() -> LogController {
        let exampleLog = Log()
        exampleLog.situation = "A tuff situation"
        exampleLog.negativeThoughts.append(Thought(thought: "dang"))
        let example = LogController()
        example.log = exampleLog
        return example
    }
    static var previews: some View {
        SelectCognitiveDistortions(logController: createExampleLog())
    }
}
