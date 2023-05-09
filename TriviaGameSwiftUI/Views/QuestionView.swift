//
//  QuestionView.swift
//  TriviaGameSwiftUI
//
//  Created by Khanh Nguyen on 09/05/2023.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        VStack(spacing: 40) {
            HStack{
                Text("Trivia Game")
                    .lilacTitle()
                Spacer()
                Text("1 out of 10")
                    .font(.title3)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("AccentColor"))
            }
           ProgressBar(progress: 80)
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Android versions are named in alphabetical order.")
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.gray)
            }
            
            AnswerRow(answer: Answer(category: "", type: "", difficulty: "", question: "", correctAnswer: "", incorrectAnswers: [""], text: "false", isCorrect: true))
            AnswerRow(answer: Answer(category: "", type: "", difficulty: "", question: "", correctAnswer: "", incorrectAnswers: [""], text: "true", isCorrect: false))
            
            PrimaryButton(text: "Next")
//            Spacer()
         }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal)
        .edgesIgnoringSafeArea(.all)
        .background(Color(red: 0.984313725490196, green: 0.9194117647058824, blue: 0.8470588235294118))
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
