//
//  newGuestMailFieldExtracted.swift
//  CarlaKroft
//
//  Created by apprenant75 on 28/01/2025.
//

import SwiftUI

struct newGuestMailFieldExtracted: View{
    @Binding var numberOfGuest : Int
    @Binding var emailField : String
    @ObservedObject var guestMail = GuestMail()
    var body: some View {
        HStack {
            Button {
                numberOfGuest += 1
            } label: {
                Image(systemName: "plus.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 30)
                    .foregroundStyle(.gray.mix(with: .white, by: 0.75))
            }
            TextField("Inserer Mail Ici",text: $guestMail.emailField)
                .padding()
                .background(.gray.mix(with: .white, by: 0.75))
                .cornerRadius(100)
            
            if numberOfGuest > 1{
                Button {
                    numberOfGuest -= 1
                    
                } label: {
                    Image(systemName: "minus.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)
                        .foregroundStyle(.red)
                }
            }
        }.padding(10)
    }
}

#Preview {
    newGuestMailFieldExtracted(numberOfGuest: .constant(1), emailField: .constant(""))
}
