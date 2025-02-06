//
//  Question1Screen.swift
//  CarlaKroft
//
//  Created by apprenant75 on 05/02/2025.
//

import SwiftUI

struct Question1Screen: View {
    
    @ObservedObject var question1 = trip
    
    @State var ButtonColor : Color = .white
    @State var towardsQuestion2 : Bool = false
    
    var body: some View {
        NavigationStack{
            ZStack {
                Color.cerulean
                    .ignoresSafeArea()
                ScrollView{
                    VStack{
                        Spacer(minLength: 60)
                        Text("Dans ce cas, combien de temps comptez vous explorer?")
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 35))
                            .multilineTextAlignment(.center)
                            .frame(width: 350,height: 200)
                        
                        Spacer(minLength: 15)
                        
                        VStack(spacing: 20){
                            // bouton Week end
                                             Button {
                                                 question1.question1.append(contentsOf: ["Un week-end"])
                                                 towardsQuestion2.toggle()
                                             } label: {
                                                 ZStack {
                                                     Rectangle()
                                                         .frame(width: 230, height: 75)
                                                         .foregroundStyle(.white)
                                                         .cornerRadius(100)
                                                     
                                                     Text("Un week-end")
                                                         .foregroundStyle(.cerulean)
                                                         .fontWeight(.bold)
                                                         .font(.system(size: 15))
                                                     
                                                 }
                                             }
                                             
                                             // bouton 1 semaine
                                             Button {
                                                 question1.question1.append(contentsOf: ["1 semaine"])
                                                 towardsQuestion2.toggle()

                                             } label: {
                                                 ZStack {
                                                     Rectangle()
                                                         .frame(width: 230, height: 75)
                                                         .foregroundStyle(.white)
                                                         .cornerRadius(100)
                                                     
                                                     Text("1 semaine")
                                                         .foregroundStyle(.cerulean)
                                                         .fontWeight(.bold)
                                                         .font(.system(size: 15))
                                                     
                                                     
                                                 }
                                             }
                                             
                                             // bouton 15 jours
                                             Button {
                                                 question1.question1.append(contentsOf: ["15 jours"])
                                                 towardsQuestion2.toggle()

                                             } label: {
                                                 ZStack {
                                                     Rectangle()
                                                         .frame(width: 230, height: 75)
                                                         .foregroundStyle(.white)
                                                         .cornerRadius(100)
                                                     
                                                     Text("15 jours")
                                                         .foregroundStyle(.cerulean)
                                                         .fontWeight(.bold)
                                                         .font(.system(size: 15))
                                                     
                                                     
                                                 }
                                             }
                                             
                                             // bouton 1 mois
                                             Button {
                                                 question1.question1.append(contentsOf: ["1 mois"])
                                                 towardsQuestion2.toggle()

                                             } label: {
                                                 ZStack {
                                                     Rectangle()
                                                         .frame(width: 230, height: 75)
                                                         .foregroundStyle(ButtonColor)
                                                         .cornerRadius(100)
                                                     
                                                     Text("1 mois")
                                                         .foregroundStyle(.cerulean)
                                                         .fontWeight(.bold)
                                                         .font(.system(size: 15))
                                                     
                                                     
                                                 }
                                             }
                        }
                        
                 
                        Spacer(minLength: 25)
                        // navigation Valider
//                        NavigationLink {
//                            Question2Screen()
//                        } label: {
//                            Text("VALIDER")
//                                .foregroundStyle(.white)
//                                .font(.system(size: 40))
//                                .fontWeight(.bold)
//                        }
                        
                        NavigationLink("", destination: Question2Screen(), isActive: $towardsQuestion2)
                        
                    }
                   
                }
            }

            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        unVoyageScreen()
                    } label: {
                        Image(systemName: "arrow.trianglehead.counterclockwise")
                            .foregroundStyle(.white)
                            .font(.system(size: 20))
                            .padding(.trailing,30)
                    }
                }
            }
        }
    }
}

#Preview {
    Question1Screen()
}
