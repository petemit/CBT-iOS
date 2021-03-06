//
//  Thought.swift
//  CBT
//
//  Created by Peter Mitchell on 2/21/21.
//

import Foundation

class Thought: Identifiable {
    let id = UUID()
    let thoughtBefore: String
    var thoughtAfter: String = ""
    var beliefBefore: Double = 0
    var beliefAfter: Double = 0
    var cognitiveDistortion: CognitiveDistortion? = nil
    init(thought: String) {
        self.thoughtBefore = thought
    }
}

