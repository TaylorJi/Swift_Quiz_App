//
//  AnswerRow.swift
//  Quiz
//
//  Created by Taylor Ji on 2022-12-29.
//

import SwiftUI

struct AnswerRow: View {
    @EnvironmentObject var triviaManager: TriviaManger
    var answer: Answer
    @State private var isSelected = false
    
    var green = Color(hue: 0.437, saturation: 0.711, brightness: 0.711)
    var red = Color(red: 0.71, green: 0.094, blue: 0.1)
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "circle.fill")
                .font(.caption)
            Text(answer.text)
                .bold()
            
            if isSelected {
                Spacer()
                
                // if the answer row is correct then check mark with green color will be displayed
                // if not, red x mark will be displayed 
                Image(systemName: answer.isCorrect ? "checkmark.bubble.fill" : "x.circle.fill")
                    .foregroundColor(answer.isCorrect ? green : red)
            }
            
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(triviaManager.answerSelected ?
                         (isSelected ? Color("AccentColor") : .gray) : Color("AccentColor"))
        .background(.white)
        .cornerRadius(10)
        .shadow(color: isSelected ? (answer.isCorrect ? green : red) :
                .gray, radius: 5, x: 0.5, y: 0.5)
        .onTapGesture {
            if !triviaManager.answerSelected {
                isSelected = true
                triviaManager.selectAnswer(answer: answer)
            }
            isSelected = true
        }
    }
}

struct AnswerRow_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRow(answer: Answer(text: "Single", isCorrect: false))
            .environmentObject(TriviaManger())
    }
}
