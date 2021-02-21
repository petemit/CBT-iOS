//
//  NegativeThoughts.swift
//  CBT
//
//  Created by Peter Mitchell on 2/21/21.
//

import SwiftUI

struct NegativeThoughts: View {
    @ObservedObject var logController: LogController
    @State var currentThought: String = ""
    
    var body: some View {
        ZStack {
            Color(colorGetter.getBackgroundColor())
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading) {
                TitleText("Enter any negative thoughts that you automatically think of when you consider the situation")
                let situationText = logController.log.situation
                ScrollableSituation(situationText)
                TextField("Negative Thought",
                          text: $currentThought) { isEditing in
                    //todo... do I care if I'm editing?
                } onCommit: {
                    logController.addNegativeThought(currentThought)
                    currentThought = ""
                    
                }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
                
                List {
                    ForEach(logController.log.negativeThoughts) { thought in
                        Text(thought.thought)
                    }
                }
                Spacer()
            }
        }
    }
    
    struct NegativeThoughts_Previews: PreviewProvider {
        static func createExampleLog() -> LogController {
            let exampleLog = Log()
            exampleLog.situation = "A tuff situation"
            exampleLog.negativeThoughts.append(Thought(thought: "dang"))
            let example = LogController()
            example.log = exampleLog
            return example
        }
        static var previews: some View {
            
            NegativeThoughts(logController: createExampleLog())
        }
    }
}
