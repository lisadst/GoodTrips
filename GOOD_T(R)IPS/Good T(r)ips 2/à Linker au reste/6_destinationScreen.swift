//
//  modalSeachDestination.swift
//  CarlaKroft
//
//  Created by apprenant75 on 30/01/2025.
//

import SwiftUI

struct DestinationScreen: View {
    
    @State var searchText = ""
    @State var towardsRecap: Bool = false

    @ObservedObject var listDestination = trip
    
    
    var destinations: [Localisation] {
        if !searchText.isEmpty {
            return localisations.filter {
                $0.pays.lowercased().contains(searchText.lowercased()) ||
                $0.capitale.lowercased().contains(searchText.lowercased())
            }
        } else {
            return []
        }
     
    }
    
    func selectDestination(){
        //        .dissmiss(ForEach(destinations))
        //                showDestinations.toggle(animated: true)
        
    }
    
    
    var body: some View {
        NavigationStack{
            Color.eggshell
                .ignoresSafeArea()
                .frame(height: 50)

            ScrollView {
                
               
                    VStack {
                        
                        Text("Destinations")
                            .font(.system(size: 80))
                            .frame(width:500)
                            .foregroundStyle(.eggshell)
                            .offset(y:-22)
                        //            ici la search bar
                        
                        ForEach(destinations) { destination in
                            
                            
                            HStack {
                                Button {
                                    towardsRecap.toggle()
                                    listDestination.listDestination.append(destination.pays + ", " + destination.capitale)
                                    
                                } label: {
                                    Text(destination.pays)
                                    Text(destination.capitale)
                                        .foregroundStyle(.white)
                                        .fontWeight(.bold)
                                        .padding(8)
                                        .background(.gray.mix(with: .accentColor, by: 0.8))
                                        .cornerRadius(12)
                                    
                                    Image(systemName: "chevron.right")
                                }
                            }
                            .frame(width: 250,alignment:.trailing)
                            .padding(.top,5)
                            
                            
                        }
                        .offset(y:-50)
                        NavigationLink("", destination: RecapView(), isActive: $towardsRecap)
                        
                        
                        //                NavigationLink {
                        //                    // future page checklist à binder
                        //                } label: {
                        //                    Text("Générer la Check-List")
                        //                        .padding(.all, 20)
                        //                        .background(Color.greenGoodTrips)
                        //                        .cornerRadius(20)
                        //                        .font(.title)
                        //                        .fontWeight(.bold)
                        //                        .foregroundStyle(.white)
                        //                        .offset(y:-100)
                        //
                        //                }
                    }
                
                Spacer(minLength: 50)
               
            }
            
            .navigationTitle("Où allons nous?")
            .searchable(text: $searchText, prompt: "Entrer une destination")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        unVoyageScreen()
                    } label: {
                        Image(systemName: "arrow.trianglehead.counterclockwise")
                            .font(.system(size: 20))
                            .padding(.trailing,30)
                    }

                }
            }
            
        }
        
        
    }
}












#Preview {
    DestinationScreen()
}
