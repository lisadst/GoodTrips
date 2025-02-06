//
//  RecapView.swift
//  CarlaKroft
//
//  Created by apprenant75 on 05/02/2025.
//

import SwiftUI


struct RecapView: View {
    @ObservedObject var recapTrip = trip
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                LinearGradient(colors: [.saffron, .eggshell], startPoint: .topLeading, endPoint: .bottomTrailing)
                //Color.saffron
                    .ignoresSafeArea()
                ScrollView{
                VStack(spacing:7){
                    Text("RECAP")
                        .frame(maxWidth:.infinity)
                        .font(.system(size: 130))
                        .foregroundColor(.white)
                    
                    Text("Un voyage en")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    
                    if recapTrip.unVoyageSolo == true{
                        ZStack {
                            Rectangle()
                                .frame(width: 230, height: 75)
                                .foregroundStyle(.white)
                                .cornerRadius(100)
                            
                            Text("Solo")
                                .foregroundStyle(.darkgreen)
                                .fontWeight(.bold)
                                .font(.system(size: 15))
                        }
                    }
                    else {
                        ZStack {
                            Rectangle()
                                .frame(width: 230, height: 75)
                                .foregroundStyle(.white)
                                .cornerRadius(100)
                            
                            Text("En groupe")
                                .foregroundStyle(.darkgreen)
                                .fontWeight(.bold)
                                .font(.system(size: 15))
                        }
                    }
                    
                    
                    //                if !emailField.isEmpty{
                    //                    Text("Les invités :")
                    //                        .font(.system(size: 15))
                    //                        .fontWeight(.bold)
                    //                        .foregroundStyle(.white)
                    //
                    ////                    ForEach(emailField, id: \.self){
                    ////                        Text($0)
                    ////
                    ////                    }
                    //                }
                    if recapTrip.quandPartir == false{
                        Text("Dans ce cas, combien de temps comptez vous\n explorer?")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .multilineTextAlignment(.center)
                           // .padding(.top, 10)
                        
                        ZStack {
                            Rectangle()
                                .frame(width: 230, height: 75)
                                .foregroundStyle(.white)
                                .cornerRadius(100)
                            
                            Text(recapTrip.question1.last ?? "pour toooujoooours")
                                .foregroundStyle(.darkgreen)
                                .fontWeight(.bold)
                                .font(.system(size: 15))
                        }
                        
                        // afficher le dernier index du tableau question1 et question2
                        
                        
                        Text("Durant quelle saison?")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .multilineTextAlignment(.center)
                           // .padding(.top, 10)
                        
                        ZStack {
                            Rectangle()
                                .frame(width: 230, height: 75)
                                .foregroundStyle(.white)
                                .cornerRadius(100)
                            
                            Text(recapTrip.question2.last ?? "toute la viiiie")
                                .foregroundStyle(.darkgreen)
                                .fontWeight(.bold)
                                .font(.system(size: 15))
                        }
                        
                    }
                    
                    else{
                        Text("Départ Prévu le")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .multilineTextAlignment(.center)
                           // .padding(.top, 10)
                        
                        ZStack {
                            Rectangle()
                                .frame(width: 230, height: 75)
                                .foregroundStyle(.white)
                                .cornerRadius(100)
                            // étudier "date formateur" afin de changer le format d'affichage de la date
                            Text(recapTrip.calendarDeparture.formatted(date: .long, time: .omitted))
                                .foregroundStyle(.darkgreen)
                                .fontWeight(.bold)
                                .font(.system(size: 15))
                        }
                        
                        Text("Retour le")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .multilineTextAlignment(.center)
                            //.padding(.top, 10)
                        
                        ZStack {
                            Rectangle()
                                .frame(width: 230, height: 75)
                                .foregroundStyle(.white)
                                .cornerRadius(100)
                            // étudier "date formateur" afin de changer le format d'affichage de la date
                            Text(recapTrip.calendarReturn.formatted(date: .long, time: .omitted))
                                .foregroundStyle(.darkgreen)
                                .fontWeight(.bold)
                                .font(.system(size: 15))
                        }
                    }
                    
                    Text("Où allons nous?")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 230, height: 75)
                            .foregroundStyle(.white)
                            .cornerRadius(100)
                        
                        Text(recapTrip.listDestination.isEmpty ? "" : recapTrip.listDestination.last ?? "")
                            .foregroundStyle(.darkgreen)
                            .fontWeight(.bold)
                            .font(.system(size: 15))
                    }
                    
                    NavigationLink { CheckList1()

                    } label: {
                        
                        HStack {
                            Image(systemName: "checkmark.circle")
                                .font(.system(size: 30))
                                .offset(y:20)
                            Text("GÉNÉRER MA CHECK-LIST")
                                .padding(.top,40)
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .lineLimit(1)
                        }
                      // .offset(y:-20)
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
}

#Preview {
    RecapView()
}

