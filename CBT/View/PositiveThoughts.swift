//
//  PositiveThoughts.swift
//  CBT
//
//  Created by Peter Mitchell on 2/21/21.
//

import SwiftUI

struct PositiveThoughts: View {
    @ObservedObject var logController: LogController
    
    var body: some View {
        ZStack {
            Color(colorGetter.getBackgroundColor())
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading) {
                TitleText("What are some logical, positive, and reasonable thoughts that compete directly with your negative thoughts?")
                Spacer()
            }
            
        }
    }
}

struct PositiveThoughts_Previews: PreviewProvider {
    static func createExampleLog() -> LogController {
        let exampleLog = Log()
        exampleLog.situation = "A tuff situation"
        exampleLog.thoughts.append(Thought(thought: "dang"))
        exampleLog.thoughts[0].cognitiveDistortion = cds[0]
        let example = LogController()
        example.log = exampleLog
        return example
    }
    static var previews: some View {
        PositiveThoughts(logController: createExampleLog())
    }
}
