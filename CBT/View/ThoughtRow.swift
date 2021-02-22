//
//  ThoughtRow.swift
//  CBT
//
//  Created by Peter Mitchell on 2/21/21.
//

import SwiftUI

struct ThoughtRow: View {
    @State private var numText: String = "0"
    private let formatter = NumberFormatter()
    let thought: Thought
    var body: some View {
        HStack {
            Text("\(thought.thought)")
                .padding()

            Spacer()
            VStack {

                Slider(value: self.binding(for: thought),
                       in: 0...10,
                       step: 1)
                    .frame(width: 200)

                Text(numText)
            }
        }.onAppear() {
            numText = formatter.string(from: NSNumber(value: thought.beliefBefore)) ?? "0"
        }
    }
    
    private func binding(for key: Thought) -> Binding<Double> {
        return .init(
            get: {
                let num = key.beliefBefore
                return num
            },
            set: {
                thought.beliefBefore = $0
                numText = formatter.string(from: NSNumber(value: thought.beliefBefore )) ?? "0"
                
            })
    }
    
    struct ThoughtRow_Previews: PreviewProvider {
        static var previews: some View {
            ThoughtRow(thought: Thought(thought: "dang"))
        }
    }
}
