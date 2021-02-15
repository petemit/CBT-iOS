//
//  EmotionCategory.swift
//  CBT
//
//  Created by Peter Mitchell on 2/7/21.
//

import Foundation

let emotionCategories = [EmotionCategory(id: 1, name: "Anger")]

struct EmotionCategory: Identifiable {
    let id: Int
    let name: String
}
