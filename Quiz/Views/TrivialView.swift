//
//  TrivialView.swift
//  Quiz
//
//  Created by Taylor Ji on 2022-12-29.
//

import SwiftUI

/**
 Linking view that connects content view and question view
 */

struct TrivialView: View {
    @EnvironmentObject var triviaManager: TriviaManger
    var body: some View {
        if triviaManager.reachedEnd {
            VStack(spacing: 20) {
                Text("Quiz Game")
                    .lilacTitle()
                Text("Conglatulations, you complete the game!")
                
                Text("Your score \(triviaManager.score) out of \(triviaManager.length)")
                
                Button {
                    Task.init {
                        await triviaManager.fetchTrivia()
                    }
                }label: {
                    PrimaryButton(text: "Play again")
                }
                
            }
            .foregroundColor(Color("AccentColor"))
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
        } else {
            QuestionView()
                .environmentObject(triviaManager)
        }
      
    }
}

struct TrivialView_Previews: PreviewProvider {
    static var previews: some View {
        TrivialView()
            .environmentObject(TriviaManger())
    }
}
