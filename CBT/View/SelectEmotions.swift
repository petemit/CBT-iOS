//
//  SelectEmotions.swift
//  CBT
//
//  Created by Peter Mitchell on 2/7/21.
//

import SwiftUI

struct SelectEmotions: View {
    @ObservedObject var logController: LogController
    
    let categories = Array(Set(emotions.map { (emotion) -> String in
        emotion.category
    }))
    
    var body: some View {
        ZStack {
            Color(colorGetter.getBackgroundColor())
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading) {
                
                TitleText("Pick the emotions you feel and rate their strengths from 1 to 10")
                let situationText = logController.log.situation
                ScrollableSituation(situationText)
                List {
                    ForEach(categories, id: \.self) { category in
                        Section(header: Text(category)) {
                            
                            ForEach(emotions.filter { emotion in
                                return emotion.category == category
                            }) { emotion in
                                EmotionRow(logController: logController, emotionId: emotion.id)
                            }
                        }
                    }
                }.listStyle(GroupedListStyle())
                
                NavigationLink(
                    destination: NegativeThoughts(logController: logController)) {
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

struct SelectEmotions_Previews: PreviewProvider {
    static func createExampleLog() -> LogController {
        let exampleLog = Log()
        exampleLog.situation = "A tuff situation"
        let example = LogController()
        example.log = exampleLog
        return example
    }
    static var previews: some View {
        SelectEmotions(logController: createExampleLog())
    }
}
