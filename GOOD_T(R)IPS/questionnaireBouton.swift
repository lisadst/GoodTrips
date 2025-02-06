//
//  questionnaireBouton.swift
//  ProjetGoodTrips
//
//  Created by apprenant79 on 28/01/2025.
//

import SwiftUI

struct questionnaireBouton: View {
    @Binding var emailField : String
    @Binding var numberOfGuest : Int
    var body: some View {
        NavigationStack{
            NavigationLink(destination: unVoyageScreen(), label: {
                Text("Un voyage à organiser ?")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.black)
                .padding(30)
                .background(.saffron)
                .cornerRadius(70)
            })
        }
    }
}
#Preview {
    questionnaireBouton(emailField: .constant(""), numberOfGuest: .constant(1))
}
