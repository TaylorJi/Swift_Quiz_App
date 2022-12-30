//
//  ProgressBar.swift
//  Quiz
//
//  Created by Taylor Ji on 2022-12-29.
//

import SwiftUI
// progress bar component
struct ProgressBar: View {
    var progress: CGFloat // number with decimal
    
    
    
    var body: some View {
        //ZStack begins at the center of the view
        ZStack(alignment: .leading) {
            // the whole progress bar colored gray
            Rectangle()
                .frame(maxWidth: 350, maxHeight: 4)
                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))
                .cornerRadius(10)
            //the actual progressing bar
            Rectangle()
                .frame(width: progress, height: 4)
                .foregroundColor(Color("AccentColor"))
                .cornerRadius(10)
        }
        
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: 50)
    }
}
