//
//  quizButtonExtract.swift
//  CarlaKroft
//
//  Created by apprenant75 on 27/01/2025.
//

import SwiftUI


struct QuizButtonExtract: View {
    var quizButtonText : String = "Text"
    @State var quizButtonColor : Color = .white
    @Binding var indexQ: Int
    
    @ObservedObject var question1 = trip
    @ObservedObject var question2 = trip

    
    var body: some View {
        
        Button(action: {
            //            self.didTap = true
            while indexQ != 1 {
                indexQ += 1
            }
            if indexQ == 0{
                question1.question1 = questions[indexQ].answer
            }
            else{
                question2.question2 = questions[indexQ].answer
            }
            
            quizButtonColor = .darkgolden
            
        },
               label: {
            ZStack {
                Rectangle()
                    .frame(width: 230, height: 75)
                    .foregroundStyle(quizButtonColor)
                    .cornerRadius(100)
                
                Text(quizButtonText)
                    .foregroundStyle(.darkgreen)
                    .fontWeight(.bold)
                    .font(.system(size: 15))
                
                
            }
            
        })
        
        
        
        
    }
}

#Preview {
    QuizButtonExtract( indexQ: .constant(0))
}
