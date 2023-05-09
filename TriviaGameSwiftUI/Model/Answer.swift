//
//  Answer.swift
//  TriviaGameSwiftUI
//
//  Created by Khanh Nguyen on 09/05/2023.
//

import Foundation

// MARK: - Answer
struct Answer: Codable {
//    let category, type, difficulty, question: String
//    let correctAnswer: String
//    let incorrectAnswers: [String]
    var text: AttributedString
    var isCorrect: Bool

    enum CodingKeys: String, CodingKey {
//        case category, type, difficulty, question
//        case correctAnswer = "correct_answer"
//        case incorrectAnswers = "incorrect_answers"
        case text
        case isCorrect
    }
}
