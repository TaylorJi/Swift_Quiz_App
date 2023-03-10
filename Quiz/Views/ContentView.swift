 //
//  ContentView.swift
//  Quiz
//
//  Created by Taylor Ji on 2022-12-29.
//

import SwiftUI

struct ContentView: View {
    @StateObject var triviaManager = TriviaManger()
    var body: some View {
        
        // change to NavigationView that links different views
        NavigationView {
            VStack (spacing: 40){
                VStack(spacing: 20) {
                    Text("Trivia Game")
                        .lilacTitle() // using the extension
                    
                    Text("Are you ready to test out your trivia skills?")
                        .foregroundColor(Color("AccentColor"))
                }
                
                NavigationLink {
                    TrivialView() // destination
                        .environmentObject(triviaManager)
                } label: {
                    PrimaryButton(text: "Let's Go!") // from Components, trigger
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
        .background(Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
        }
        
       
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
