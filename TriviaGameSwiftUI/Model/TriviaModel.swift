//
//  TriviaModel.swift
//  TriviaGameSwiftUI
//
//  Created by Khanh Nguyen on 09/05/2023.
//

import Foundation

struct TriviaModel: Decodable {
    var results: [Result]
    
    struct Result: Decodable, Identifiable {
        var id: UUID{
            UUID()
        }
        let category, type, difficulty, question: String
        let correctAnswer: String
        let incorrectAnswers: [String]

        enum CodingKeys: String, CodingKey {
            case category, type, difficulty, question
            case correctAnswer = "correct_answer"
            case incorrectAnswers = "incorrect_answers"
        }
        
        var formattedQuestion: AttributedString {
            do{
                return try AttributedString(markdown: question)
            }catch{
                print("Error setting formattedQuestion")
                return ""
            }
        }
    
        
        var answer:[Answer]{
            do{
                let correct = [Answer(text: try AttributedString(markdown: correctAnswer), isCorrect: true)]
                let incorrects = try incorrectAnswers.map({ answer in
                    Answer(text: try AttributedString(markdown: answer), isCorrect: false)
                })
                let allAnswer = correct + incorrects
                return allAnswer.shuffled()
            }catch{
                print("Error setting answers: \(error)")
                return []
            }
        }
    }
}
