//
//  QuestionView.swift
//  Quiz
//
//  Created by Taylor Ji on 2022-12-29.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        VStack(spacing: 40) {
            HStack {
                Text("Trivia Game")
                    .lilacTitle()
                Spacer()
                Text("1 out of 10")
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.heavy)
                
            }
            ProgressBar(progress: 40) // from Components 
            VStack(alignment: .leading, spacing: 20) {
                Text("The Python programming language gets its name from the British comedy group &quot;Monty Python.&quot")
                    .font(.system(size:20))
                    .bold()
                    .foregroundColor(.gray)
                AnswerRow(answer: Answer(text: "True", isCorrect: true))
                AnswerRow(answer: Answer(text: "False", isCorrect: false))
                
            }
            PrimaryButton(text: "Next")
            
            Spacer()

            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
