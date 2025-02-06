//
//  4_calendarScreen.swift
//  CarlaKroft
//
//  Created by apprenant75 on 27/01/2025.
//

import SwiftUI

struct __calendarScreen: View {
    let goodTripsYellow : Color = .darkgolden
    
    @ObservedObject var calendarDeparture = trip
    @ObservedObject var calendarReturn = trip

    @State private var departureDate = Date()
    @State private var returnDate = Date()
    @State var towardsDestination : Bool = false
//    @Binding var previousAnswer: String
//    @Binding var index: Int
    @State var showSearchOui : Bool = false
    
    

    var body: some View {
        NavigationStack{
            VStack {
                ZStack{
                    Color(goodTripsYellow)
                        .ignoresSafeArea()
                    
                    VStack {
                        Spacer()
                        HStack{
                            
                            Spacer()
                            Text("Départ Prévu le")
                                .foregroundStyle(.white)
                                .fontWeight(.bold)
                                .font(.system(size: 30))
                                .lineLimit(1)
                                .frame(width: 220)
                                .padding(.leading, 20)
                                                        
                            
                            DatePicker(
                                "", selection: $departureDate,
                                displayedComponents: [.date]
                            )
                            .offset(x: -30)

                            
                            Spacer()
                            
                            
                        }
                        .offset(y:120)
                        
                        Spacer()
                        
                        HStack{
                            Spacer()
                            
                            Text("Retour le")
                                .foregroundStyle(.white)
                                .fontWeight(.bold)
                                .font(.system(size: 30))
                                .frame(width: 200)
                                .padding(.leading, 20.0)
                            
                            DatePicker(
                                "", selection: $returnDate, in: departureDate...,
                                displayedComponents: [.date]
                            )
                            .offset(x: -30)
                            
                            Spacer()
                            
                            
                        }
                        .offset(y:70)
                        
                        Spacer(minLength: 250)
                        
                        Button {
                            calendarDeparture.calendarDeparture = departureDate
                            calendarReturn.calendarReturn = returnDate
                            
                            towardsDestination.toggle()
                        } label: {
                            Text("VALIDER")
                                .foregroundStyle(.white)
                                .font(.system(size: 50))
                                .fontWeight(.black)
                               
                        } .offset(y: -60)

                        NavigationLink("", destination: DestinationScreen(), isActive: $towardsDestination)
                        
//                        NavigationLink {
//                            DestinationScreen()
//                        } label: {
//                            Text("VALIDER")
//                                .foregroundStyle(.white)
//                                .font(.system(size: 50))
//                                .fontWeight(.black)
//                                .offset(y: -60)
//                        }


    //                    Button {
    //                        showSearchOui.toggle()
    //
    //                    } label: {
    //                        Text("VALIDER")
    //                            .foregroundStyle(.white)
    //                            .font(.system(size: 50))
    //                            .fontWeight(.black)
    //
    //
    //                    }
    //                    .sheet(isPresented: $showSearchOui) {
    //                        modalSeachDestinationOui()
    //                    }
                        
                        // modale qui ne se retracte pas, Bool bloqué sur true, toggle non fonctionnel
                        
                        Spacer()

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
    __calendarScreen()
}
