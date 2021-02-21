//
//  Thought.swift
//  CBT
//
//  Created by Peter Mitchell on 2/21/21.
//

import Foundation

class Thought: Identifiable {
    let id = UUID()
    let thought: String
    var beliefBefore: Int = 0
    var beliefAfter: Int = 0
    init(thought: String) {
        self.thought = thought
    }
}

