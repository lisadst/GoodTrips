//
//  Modale_JB.swift
//  ProjetGoodTrips
//
//  Created by apprenant79 on 01/02/2025.
//

import SwiftUI

struct Modale_JB: View {
    var card: cardJB
   /* @ObservedObject var favPostList = postfavoris
   var isfav : Bool{
        for fav in postfavoris.postfavoris {
            if fav.title == card.title{
                return true
            }
        }
        return false
    }*/
    @State var comment: String = ""
    var body: some View {
        ScrollView{
            VStack{
                
                VStack {
                    Text(card.title)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.top,10)
                    
                    Image(card.photo)
                        .resizable()
                        .frame(width:400, height:300)
                        .scaledToFill()
                        .padding(10)
             
                    Text(card.description_detail)
                        .fontWeight(.medium)
                        .padding()
                        .foregroundColor(.black)
                    /*Button(action: {
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
                     
                     }) .offset(x:70, y:-10)*/
                    
                }
                
                .frame(width:370)
                .background(.darkgolden)
                .cornerRadius(15)
                
                HStack{
                    
                    Image(systemName:card.likeIcon)
                    Text(card.likeNb.description)
                    
                    Image(systemName:card.comIcon)
                    Text(card.comNb.description)
                    Spacer()
                    
                }.padding(.leading)
                
                    .padding(.bottom,15)
                
                HStack{
                    TextField("Laissez un commentaire:", text: $comment)
                        .padding()
                        .frame(width:270)
                        .border(.black)
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "paperplane.fill")
                            .fontWeight(.bold)
                            .foregroundStyle(.eggshell)
                            .padding()
                            .background(.darkgreen)
                            .cornerRadius(10)
                    })}
                
                Text("Commentaires :")
                    .font(.title)
                    .fontWeight(.medium)
                    .padding()
                
                
                
             
                
                
            }
        }
    }
}

#Preview {
    Modale_JB(card: cardNews[0])
}
