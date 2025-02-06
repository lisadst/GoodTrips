//
//  returnExtractedButton.swift
//  CarlaKroft
//
//  Created by apprenant75 on 26/01/2025.
//

import SwiftUI


struct returnExtractedButton: View {
    var colorReturn : Color = .yellow.mix(with: .blue, by: 0.05)
    var body: some View {
        Button(action: {
            
        }, label: {
            
            VStack {
                HStack{
                    Image(systemName: "chevron.backward")
                        .foregroundStyle(colorReturn)
                        .padding([.top, .leading], 25.0)
                    
                    Text("Retour")
                        .padding(.top, 25.0)
                        .foregroundStyle(colorReturn)
                    Spacer()
                    
                }
                .padding(.top, 20.0)
                Spacer()
            }
        })
    }
}

#Preview {
    returnExtractedButton(colorReturn: .yellow)
}
