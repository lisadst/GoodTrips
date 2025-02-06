//
//  PAGE_POST_EXEMPLE_TEST.swift
//  ProjetGoodTrips
//
//  Created by apprenant79 on 01/02/2025.
//

import SwiftUI

struct PAGE_POST_EXEMPLE: View {
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
                        VStack{
                            Text(card.description)
                                .fontWeight(.medium)
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
    PAGE_POST_EXEMPLE(card: cardNews[0])
}
