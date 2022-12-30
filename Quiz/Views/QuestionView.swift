//
//  QuestionView.swift
//  Quiz
//
//  Created by Taylor Ji on 2022-12-29.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var triviaManager: TriviaManger
    
    var body: some View {
        VStack(spacing: 40) {
            HStack {
                Text("Trivia Game")
                    .lilacTitle()
                Spacer()
                Text("\(triviaManager.index + 1) out of \(triviaManager.length)")
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.heavy)
                
            }
            ProgressBar(progress: triviaManager.progress) // from Components
            VStack(alignment: .leading, spacing: 20) {
                Text(triviaManager.question)
                    .font(.system(size:20))
                    .bold()
                    .foregroundColor(.gray)
                
                ForEach(triviaManager.answerChoices, id: \.id) {
                    answer in AnswerRow(answer: answer)
                        .environmentObject(triviaManager)
                }
                
                
            }
            Button {
                triviaManager.goToNextQuestion()
            } label: {
                PrimaryButton(text: "Next", background: triviaManager.answerSelected ? Color("AccentColor") : Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
            }
            .disabled(!triviaManager.answerSelected)
          
            
            Spacer()

            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
        .navigationBarBackButtonHidden(true) // hiding the back button
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
            .environmentObject(TriviaManger())
    }
}
