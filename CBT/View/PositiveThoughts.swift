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
                TitleText("What Are Positive Thoughts That Most Directly and Logically ?")
                Spacer()
            }
            
        }
    }
}

struct PositiveThoughts_Previews: PreviewProvider {
    static func createExampleLog() -> LogController {
        let exampleLog = Log()
        exampleLog.situation = "A tuff situation"
        exampleLog.negativeThoughts.append(Thought(thought: "dang"))
        exampleLog.negativeThoughts[0].cognitiveDistortion = cds[0]
        let example = LogController()
        example.log = exampleLog
        return example
    }
    static var previews: some View {
        PositiveThoughts(logController: createExampleLog())
    }
}
