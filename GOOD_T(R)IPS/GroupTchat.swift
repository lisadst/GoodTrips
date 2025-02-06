//
//  ContentView.swift
//  messagerie2
//
//  Created by apprenant113 on 30/01/2025.
//

import SwiftUI

struct GroupTchat: View {
    var group: itemMessagerie
    var body: some View {
        NavigationStack{
            NavigationLink(destination: (TextingTchat(sondage:survey[0],grouptitle:group)),
                           label: {
                HStack{
                    VStack {
                        Text(group.groupTitle)
                            .font(.title3)
                            .fontWeight(.semibold)
                           .padding(.top,10)
                        
                        HStack{
                            ZStack{
                                Image(group.profilPictures1)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width:50)
                                    .clipShape(Circle())
                                    .offset(x:-25)
                                Image(group.profilPictures2)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:50)
                                    .clipShape(Circle())
                                    .offset(x:15)
                                Image(group.profilPictures3)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:50)
                                    .clipShape(Circle())
                                    .offset(x:60)
                            }
                            .frame(width:100)
                        }
                      
                    }
                    .padding(.bottom,5)
                    .padding(.leading)
                    
                    Spacer()
                    Text(group.lastMessage)
                        .frame(width: 200, height:20)
                    //Spacer()
                    Text(group.day)
                        .font(.footnote)
                        .offset(x:-5, y:-35)
                }
            })
            .frame(width:400, height:110)
            .background(.eggshell)
            .foregroundColor(.black)
        }
            
        }
                           
    
        
    }
        
       
    


#Preview {
    GroupTchat(group: itemsMessagerie[1])
}
