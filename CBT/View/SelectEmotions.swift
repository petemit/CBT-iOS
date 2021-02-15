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
                Text("Situation: \(situationText)")
                    .mukta(20)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                List {
                    ForEach(categories, id: \.self) { category in
                        Section(header: Text(category)) {
                            
                            ForEach(emotions.filter { emotion in
                                return emotion.category == category
                            }) { emotion in
                                EmotionRow(logController: logController, numText: "0", emotionId: emotion.id)
                            }
                        }
                    }
                }.listStyle(GroupedListStyle())
                //       List(emotions) { emotion in
                
                //            let emotionString = emotion.name
                //                    categories.map { (category) -> T in
                //                        Section(header: Text("test")) {
                //
                
                //                        }
                //                    }
                
                //   }
                
                
                
                NavigationLink(
                    destination: ExplainSituation(logController: logController)) {
                    ButtonText("Next")
                        .padding()
                }
                .navButtonStyle()
                .frame(maxWidth: .infinity, alignment: .center)
                Spacer()
            }
        }
    }
    
    private func binding(for key: Int) -> Binding<Double> {
            return .init(
                get: { self.logController.log.selectedEmotions[key, default: 0.0] },
                set: { self.logController.log.selectedEmotions[key] = $0 })
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
