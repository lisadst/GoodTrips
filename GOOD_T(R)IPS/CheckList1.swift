//
//  ChecList1.swift
//  AFP20251
//
//  Created by apprenant97 on 29/01/2025.
//

import SwiftUI

struct CheckList1: View {
    @State private var showingCredits = false
    
    @State private var reservationChecked = false
    @State private var passeportChecked = false
    @State private var idCardCheked = false
    @State private var visaCheked = false
    @State private var insuranceCheked = false
    @State private var currenciesChecked = false
    @State private var eSimChecked = false
    @State private var hotelCheked = false
    @State private var transportCheked = false
    @State private var mobilityChecked = false
    @State private var activitiesChecked = false
    @State var selectedTab = 0
    
    var body: some View {
        NavigationStack{
            
                ZStack {
                    Color(.eggshell)
                        .ignoresSafeArea()
                    Image (systemName: "airplane")
                        .resizable()
                        .opacity(0.2)
                        .padding()
                        .aspectRatio(contentMode: .fit)
                    ScrollView{
                    VStack(spacing: 30) {
                        // Réservation
                        Text("Organiser mon voyage")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.darkgreen)
                            .padding(25)
                            .background(.eggshell)
                            .cornerRadius(15)
                            .overlay{
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.darkgreen, lineWidth: 2)
                                
                            }
                            .padding(.top,50)
                        //Besoin d'aide
                        NavigationLink(destination: BesoinAide(), label: {
                            HStack{
                                Image(.help)
                                Text("Besoin d'aide")
                                    .font(.title)
                                .fontWeight(.bold)}
                            .padding(.all,2)
                            .frame(width: 250, height:60)
                            .background(Color.yellow)
                            .foregroundStyle(.white)
                            .cornerRadius(10)
                        })
                        
                        .padding(.horizontal)
                        .padding(.top,12)
                        
                        
                        //Documents
                        HStack
                        {
                            LabelledDivider(label: "Documents")
                                .font(.system(size:19))
                                .fontWeight(.bold)
                                .padding()
                            
                        }
                        VStack
                        {
                            Toggle(isOn: $passeportChecked) {
                                Text("Passeport / ID card")
                            }
                            Divider()
                            
                                .padding(.horizontal)
                            Toggle(isOn: $visaCheked) {
                                Text("Visas")
                                
                            }
                            Divider()
                                .padding(.horizontal)
                            Toggle(isOn: $insuranceCheked) {
                                Text("Assurance")
                                
                            }
                            Divider()
                                .padding(.horizontal)
                            Toggle(isOn: $currenciesChecked) {
                                Text("Devise")
                                
                            }
                            Divider()
                            //.padding(.horizontal)
                            Toggle(isOn: $eSimChecked) {
                                Text("eSIM")
                                
                                //.padding(.horizontal)
                            }
                            Divider()
                            
                        }
                        HStack
                        {
                            LabelledDivider(label: "Booking")
                                .font(.system(size:19))
                                .fontWeight(.bold)
                                .padding()
                            
                        }
                        VStack
                        {
                            Toggle(isOn: $hotelCheked) {
                                Text("Logement(s)")
                            }
                            Divider()
                            // .padding(.horizontal)
                            Toggle(isOn: $transportCheked) {
                                Text("Transport(s)")
                                
                            }
                            Divider()
                                .padding(.horizontal)
                            Toggle(isOn: $mobilityChecked) {
                                Text("Mobilité interne")
                                
                            }
                            Divider()
                                .padding(.horizontal)
                            Toggle(isOn: $activitiesChecked) {
                                Text("Activités")
                                
                            }
                            Divider()
                          
                            Button(action:
                                    { showingCredits.toggle()
                            }, label:{
                                Text("VALIDER")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                            } )
                            .font(.system(size:40))
                            .padding(15)
                            .background(.darkgreen)
                            .cornerRadius(100)
                           .foregroundStyle(.white)
                          
                            .sheet(isPresented: $showingCredits) {
                                ZStack{
                                    Color.darkgreen
                                        .ignoresSafeArea()
                                    Text("Vous êtes prêts à partir! ✈️✅")
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .fontWeight(.bold)
                                    Button(action:
                                            {showingCredits.toggle()},
                                           label:{
                                        Image(systemName:"xmark")
                                            .foregroundColor(.white)
                                            
                                    })
                                    .offset(x:180, y:-350)
                                }
                            }
                        }
                        
                    }
                    .foregroundColor(.darkgreen)
                    .padding()
                }
            }
        }
    }}
#Preview {
    
        CheckList1()
    }

