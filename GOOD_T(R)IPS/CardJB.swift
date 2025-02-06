//
//  CardJB.swift
//  ProjetGoodTrips
//
//  Created by apprenant79 on 28/01/2025.
//

import SwiftUI

struct CardJB: View {
    var card: cardJB
    @ObservedObject var favPostList = postfavoris
    var isfav : Bool{
        for fav in postfavoris.postfavoris {
            if fav.title == card.title{
                return true
            }
        }
        return false
    }
    var body: some View {
        NavigationStack{
            VStack {
                HStack {
                    NavigationLink(destination: JOURNAUX_BORDS(), label: {
                        Image(card.photo)
                            .resizable()
                            .scaledToFill()
                            .frame(width:150, height:150)
                        Spacer()
                        VStack{
                            Text(card.title)
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            Text(card.description)
                                .padding()
                                .foregroundColor(.black)
                            Button(action: {
                                if let index = postfavoris.postfavoris.firstIndex(where: { $0.id == card.id }) {
                                    // Remove the destination if it's already in favoris
                                    postfavoris.postfavoris.remove(at: index)
                                } else {
                                    // Add the destination if it's not already in favoris
                                    postfavoris.postfavoris.append(card)
                                }
                                
                            },label: {
                                Image(systemName: isfav ? "heart.fill" : "heart")
                                    .resizable()
                                    .frame(width:30, height:30)
                                    .foregroundColor(.black)
                                
                            }) .offset(x:70, y:-10)
                            
                        }
                    Spacer()
                            
                    })
                }

                .frame(width:350, height:150)
                .background(.eggshell)
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
    CardJB(card: cardNews[0])
}
