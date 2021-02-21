//
//  EmotionRow.swift
//  CBT
//
//  Created by Peter Mitchell on 2/7/21.
//

import SwiftUI

struct EmotionRow: View {
    @ObservedObject var logController: LogController
    @State var numText: String = "0"
    private let formatter = NumberFormatter()
    let emotionId: Int
    
    init(logController: LogController, emotionId: Int) {
        self.logController = logController
        self.emotionId = emotionId
        formatter.numberStyle = .none
    }
    
    
    var body: some View {
        if let emotion = emotions.first(where: { emotion in emotion.id == emotionId }) {
            
            
            
            HStack {
                Text("\(emotion.name)")
                    .padding()
                
                Spacer()
                
                VStack {
                    
                    
                    Slider(value: self.binding(for: emotionId),
                    in: 0...10,
                    step: 1)
                    .frame(width: 200)
                    
                    Text(numText)
                }
                
            }
            .frame(maxWidth: .infinity)
            .onAppear() {
                let num = self.logController.log.selectedEmotions[emotionId] ?? 0.0
                numText = formatter.string(from: NSNumber(value: num)) ?? "0"
            }
        }
    }
    private func binding(for key: Int) -> Binding<Double> {
            return .init(
                get: {
                    return self.logController.log.selectedEmotions[key] ?? 0.0
                },
                set: {
                    self.logController.log.selectedEmotions[key] = $0
                    let num = self.logController.log.selectedEmotions[key] ?? 0.0
                    numText = formatter.string(from: NSNumber(value: num)) ?? "0"
                    
                })
        }
}

struct EmotionRow_Previews: PreviewProvider {
    static var previews: some View {
        EmotionRow(logController: LogController(), emotionId: 2)
    }
}


