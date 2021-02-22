//
//  CognitiveDistortion.swift
//  CBT
//
//  Created by Peter Mitchell on 2/21/21.
//

import Foundation

let cds = [ CognitiveDistortion(id: 1, name: "Self-Blame", summary: "You blame yourself for problems outside of your control", description: "", example: ""),
            CognitiveDistortion(id: 2, name: "Over-Generalization", summary: "You view things as a never-ending pattern of defeat", description: "", example: ""),
            CognitiveDistortion(id: 3, name: "All-Or-Nothing", summary: "test1", description: "", example: ""),
            CognitiveDistortion(id: 4, name: "Hello", summary: "test2", description: "", example: "")
]

extension Array where Element == CognitiveDistortion  {
    func byId(_ id: Int) -> CognitiveDistortion? {
        return self.first { cog -> Bool in
            cog.id == id
        }
    }
}

struct CognitiveDistortion: Identifiable {
    let id : Int
    let name: String
    let summary: String
    let description: String
    let example: String
}
