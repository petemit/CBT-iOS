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
    
    private func action() {
        if (currentThought != "") {
            logController.addNegativeThought(currentThought)
            currentThought = ""
        }
    }
    var body: some View {
        ZStack {
            Color(colorGetter.getBackgroundColor())
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading) {
                TitleText("Enter any negative thoughts that you automatically think of when you consider the situation")
                let situationText = logController.log.situation
                ScrollableSituation(situationText)
                HStack {
                TextField("Negative Thought",
                          text: $currentThought) { isEditing in
                    //todo... do I care if I'm editing?
                } onCommit: {
                    action()
                }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                    Button(action: {
                        action()
                    }, label: {
                        ButtonText("Add")
                    })
                    .buttonStyle(PlainButtonStyle())
                    .background(Color.white)
                    .frame(height:50, alignment: .center)
                    .cornerRadius(25.0)
                    .padding()
                    
                }
                
                
                List {
                    ForEach(logController.log.thoughts) { thought in
                        ThoughtRow(thought: thought)
                    }
                }
                .padding()
                
                NavigationLink(
                    destination: SelectCognitiveDistortions(logController: logController)) {
                    ButtonText("Next")
                        .padding()
                }
                .navButtonStyle()
                .frame(maxWidth: .infinity, alignment: .center)
                
                Spacer()
            }
        }
    }
    
    struct NegativeThoughts_Previews: PreviewProvider {
        static func createExampleLog() -> LogController {
            let exampleLog = Log()
            exampleLog.situation = "A tuff situation"
            exampleLog.thoughts.append(Thought(thought: "dang"))
            let example = LogController()
            example.log = exampleLog
            return example
        }
        static var previews: some View {
            
            NegativeThoughts(logController: createExampleLog())
        }
    }
}
