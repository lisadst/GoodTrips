//
//  articleDestination.swift
//  ProjetGoodTrips
//
//  Created by apprenant79 on 30/01/2025.
//

import SwiftUI

struct articleDestination: View {
    var city: destinationTop
    var body: some View {
        ScrollView{
            VStack{
                Text(city.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(width:300)
                    .padding()
                    .border(.black)
                Image(city.photo)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .frame(width:300, height:300)
                Text("Description: ")
                    .font(.title)
                    .fontWeight(.semibold)
                    .underline()
                    .padding(.bottom,15)
                Text(city.description)
                    .multilineTextAlignment(.center)
                    .padding(10)
                    .padding(.bottom,15)
            }
            Text("Derniers posts:")
                .font(.title)
                .fontWeight(.semibold)
                .underline()
            VStack{
                CardJB(card: cardNews[0])
                CardJB(card: cardNews[1])
                CardJB(card: cardNews[2])
                CardJB(card: cardNews[3])
                CardJB(card: cardNews[4])
                CardJB(card: cardNews[5])
            }
        }
    }
}

#Preview {
    articleDestination(city: destinations[0])
}
