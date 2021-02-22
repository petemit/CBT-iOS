//
//  LogController.swift
//  CBT
//
//  Created by Peter Mitchell on 2/7/21.
//

import Foundation
import Combine

class LogController: ObservableObject {
    let objectWillChange = ObservableObjectPublisher()
    @Published var log: Log
    init(){
        log = Log()
    }
    
    func addNegativeThought(_ str: String) {
        let thought = Thought(thought: str)
        log.negativeThoughts.append(thought)
        objectWillChange.send()
    }
    
    func getThoughtFromId(_ id: UUID) -> Thought? {
        return log.negativeThoughts.first { (thought) -> Bool in
            thought.id == id
        }
    }
}
