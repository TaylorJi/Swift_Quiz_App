//
//  Extentions.swift
//  Quiz
//
//  Created by Taylor Ji on 2022-12-29.
//

import Foundation
import SwiftUI

extension Text {
    /**
     Create a extention for Text
     return type = View
     */
    func lilacTitle() -> some View {
        self.font(.title)
        .fontWeight(.heavy)
        .foregroundColor(Color("AccentColor"))
    }
}
