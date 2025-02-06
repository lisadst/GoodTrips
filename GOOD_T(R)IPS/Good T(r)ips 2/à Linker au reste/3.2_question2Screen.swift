//
//  Question2Screen.swift
//  CarlaKroft
//
//  Created by apprenant75 on 05/02/2025.
//

import SwiftUI

struct Question2Screen: View {
    @ObservedObject var question2 = trip
    
    @State var towardsDesti = false
    var body: some View {
        NavigationStack{
            ZStack {
                Color.cerulean
                    .ignoresSafeArea()
                ScrollView{
                    
                    VStack{
                        Spacer(minLength: 70)
                        Text("Durant quelle saison?")
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 35))
                            .multilineTextAlignment(.center)
                            .frame(width:.infinity,height: 200)
                        
                        Spacer()
                        
                        VStack(spacing: 20){
                            // bouton printemps
                                                  Button {
                                                      question2.question2.append(contentsOf: ["Printemps"])
                                                      towardsDesti.toggle()
                                                  } label: {
                                                      ZStack {
                                                          Rectangle()
                                                              .frame(width: 230, height: 75)
                                                              .foregroundStyle(.white)
                                                              .cornerRadius(100)
                                                          
                                                          Text("Printemps")
                                                              .foregroundStyle(.cerulean)
                                                              .fontWeight(.bold)
                                                              .font(.system(size: 15))
                                                          
                                                          
                                                      }
                                                  }
                                                  
                                                  // bouton été
                                                  Button {
                                                      question2.question2.append(contentsOf: ["Été"])
                                                      towardsDesti.toggle()

                                                  } label: {
                                                      ZStack {
                                                          Rectangle()
                                                              .frame(width: 230, height: 75)
                                                              .foregroundStyle(.white)
                                                              .cornerRadius(100)
                                                          
                                                          Text("Été")
                                                              .foregroundStyle(.cerulean)
                                                              .fontWeight(.bold)
                                                              .font(.system(size: 15))
                                                          
                                                          
                                                      }
                                                  }
                                                  
                                                  // bouton automne
                                                  Button {
                                                      question2.question2.append(contentsOf: ["Automne"])
                                                      towardsDesti.toggle()


                                                  } label: {
                                                      ZStack {
                                                          Rectangle()
                                                              .frame(width: 230, height: 75)
                                                              .foregroundStyle(.white)
                                                              .cornerRadius(100)
                                                          
                                                          Text("Automne")
                                                              .foregroundStyle(.cerulean)
                                                              .fontWeight(.bold)
                                                              .font(.system(size: 15))
                                                          
                                                          
                                                      }
                                                  }
                                                  
                                                  
                                                  // bouton hiver
                                                  Button {
                                                      question2.question2.append(contentsOf: ["Hiver"])
                                                      towardsDesti.toggle()


                                                  } label: {
                                                      ZStack {
                                                          Rectangle()
                                                              .frame(width: 230, height: 75)
                                                              .foregroundStyle(.white)
                                                              .cornerRadius(100)
                                                          
                                                          Text("Hiver")
                                                              .foregroundStyle(.cerulean)
                                                              .fontWeight(.bold)
                                                              .font(.system(size: 15))
                                                          
                                                          
                                                      }
                                                  }
                        }
                        
                      
                        // navigation valider
                        
//                        NavigationLink {
//                            DestinationScreen()
//                        } label: {
//                            Text("VALIDER")
//                                .foregroundStyle(.white)
//                                .font(.system(size: 40))
//                                .fontWeight(.bold)
//                        }
                        NavigationLink("", destination: DestinationScreen(), isActive: $towardsDesti)
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
    Question2Screen()
}
