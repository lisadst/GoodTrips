//
//  Card_historique.swift
//  ProjetGoodTrips
//
//  Created by apprenant79 on 03/02/2025.
//

import SwiftUI

struct Card_historique: View {
    var card: cardJB
    var body: some View {
        NavigationStack{
            VStack {
                Text(card.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                HStack {
                        Image(card.photo)
                            .resizable()
                            .scaledToFit()
                            .padding(.leading,10)
                        Spacer()
                 
                            Text(card.description)
                                .fontWeight(.medium)
                                .padding()
                                .foregroundColor(.black)
                            
                            
                    
                }

                .frame(width:370, height:200)
                .background(.darkgolden)
                .cornerRadius(15)
                                                   
               HStack{
                    
                    Image(systemName:card.likeIcon)
                    Text(card.likeNb.description)
                    
                    Image(systemName:card.comIcon)
                    Text(card.comNb.description)
                    Spacer()
                    
                }.padding(.leading)
            }.padding()
            
            
        }
    }
    
}

#Preview {
    Card_historique(card: cardNews[1])
}

