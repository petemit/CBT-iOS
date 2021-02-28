//
//  ThoughtAfterRow.swift
//  CBT
//
//  Created by Peter Mitchell on 2/28/21.
//

import SwiftUI

struct ThoughtAfterRow: View {
    let thought: Thought
    var body: some View {
        VStack(alignment: .leading ){
            Text(thought.thoughtBefore)
                .mukta(20)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                .padding()
            Text(thought.cognitiveDistortion?.name ?? "")
                .mukta(20)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                .padding()
                
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    
        
    }
}

struct ThoughtAfterRow_Previews: PreviewProvider {
    static func createExampleThought() -> Thought {
        let thought = Thought(thought: "dang")
        thought.cognitiveDistortion = cds[2]
        thought.beliefBefore = 4.0
        return thought
    }
    static var previews: some View {
        ThoughtAfterRow(thought: createExampleThought())
    }
}
