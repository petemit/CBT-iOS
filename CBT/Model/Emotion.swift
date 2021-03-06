//
//  Emotions.swift
//  CBT
//
//  Created by Peter Mitchell on 2/7/21.
//

import Foundation
let emotions = [ Emotion(id: 1, category: "Anger", name: "Mad"),
                 Emotion(id: 2, category: "Anger", name: "Angry"),
                 Emotion(id: 3, category: "Anger", name: "Offended"),
                 Emotion(id: 4, category: "Anger", name: "Frustrated"),
                 Emotion(id: 5, category: "Anger", name: "Annoyed"),
                 Emotion(id: 6, category: "Anger", name: "Irritated"),
                 Emotion(id: 7, category: "Sadness", name: "Sad"),
                 Emotion(id: 8, category: "Sadness", name: "Depression"),
                 Emotion(id: 9, category: "Sadness", name: "Down"),
                 Emotion(id: 10, category: "Sadness", name: "Blue"),
                 Emotion(id: 11, category: "Despair", name: "Hopeless"),
                 Emotion(id: 12, category: "Despair", name: "Despair"),
                 Emotion(id: 13, category: "Shame", name: "Embarrassed"),
                 Emotion(id: 14, category: "Shame", name: "Humiliated"),
                 Emotion(id: 15, category: "Shame", name: "Worthless")
]

struct Emotion: Identifiable {
    let id: Int
    let category: String
    let name: String
}



