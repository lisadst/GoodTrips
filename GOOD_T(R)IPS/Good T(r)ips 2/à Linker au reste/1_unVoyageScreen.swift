//
//  testSearchBar.swift
//  CarlaKroft
//
//  Created by apprenant75 on 26/01/2025.
//

import SwiftUI

struct unVoyageScreen: View {
    // relié avec mon ObservableObject de ma class
    @ObservedObject var unVoyageSolo = trip
    // mes var reliée à mes toggle
    @State var go : Bool = false
    @State var go2 : Bool = false
    
    

    var body: some View {
        NavigationStack{
            VStack{
                Spacer(minLength: 200)
                Text("Un Voyage en...")
                    .font(.system(size: 35))
                    .fontWeight(.bold)
                Spacer(minLength: 70)
                
                
                
                Button (action: {
                    // action du button 1 -> mettre une nouvelle valeur dans ma var trip qui retiens toutes mes réponses
                    // bien faire attention de relier à la bonne var @Published pour retrouver les bonnes réponses lors de mon récap final
                    // action du button n°2 -> toggle pour activer ma navigationLink
                    unVoyageSolo.unVoyageSolo = true
                    go.toggle()
                }
                ,label: {
                    HStack {
                        ZStack {
                            
                            Rectangle()
                                .fill(.darkgolden)
                                .frame(width: 400,height: 200)
                                .cornerRadius(100)
                            
                            HStack {
                                Spacer(minLength: 100)
                                Text("Solo")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 100))
                                    .fontWeight(.bold)
                                
                            }
                        }
                    }
                    Spacer(minLength:280)
                    
                })
            }
            // 1: naviagationLink "is active" agit en collab avec un bouton toggle
            NavigationLink("", destination:
                            quandPartirScreen(), isActive: $go)
            
            NavigationLink("", destination:
                            MailScreenView(), isActive: $go2)
            
            
            Button (action: {
                unVoyageSolo.unVoyageSolo = false
                go2.toggle()
            }, label: {
                HStack {
                    Spacer(minLength: 250)
                    
                    ZStack {
                        
                        Rectangle()
                            .fill(.eggshell)
                            .frame(width: 400,height: 200)
                            .cornerRadius(100)
                        
                        HStack {
                            Text("Groupe")
                                .foregroundStyle(.white)
                                .font(.system(size: 70))
                                .fontWeight(.bold)
                            Spacer(minLength: 113)
                        }
                    }
                }
            })
            
            
            
            Spacer(minLength: 100)
        }
        
    }
}

#Preview {
    unVoyageScreen()
}
