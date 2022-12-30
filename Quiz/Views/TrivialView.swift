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
    var body: some View {
        QuestionView()
    }
}

struct TrivialView_Previews: PreviewProvider {
    static var previews: some View {
        TrivialView()
    }
}
