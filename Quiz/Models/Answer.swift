//
//  Answer.swift
//  Quiz
//
//  Created by Taylor Ji on 2022-12-29.
//

import Foundation



/**
 each answer can be identified by its unique id 
 */

struct Answer: Identifiable {
    var id = UUID() // random ID that is generated by Swift
    var text: AttributedString
    var isCorrect: Bool
}
