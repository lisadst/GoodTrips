//
//  BesoinAide.swift
//  AFP20251
//
//  Created by apprenant97 on 02/02/2025.
//

import SwiftUI

struct BesoinAide: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color (.eggshell)
                    .ignoresSafeArea()
                
                Image (systemName: "airplane")
                    .resizable()
                    .opacity(0.2)
                    .padding()
                    .aspectRatio(contentMode: .fill)
                VStack {
                    LabelledDivider(label:"Où se loger")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    Spacer()
                    HStack(spacing:20){
                        
                        Link(destination: URL(string: "https://www.airbnb.fr")!) {
                            VStack{
                                Image (.airbnb)
                                    .resizable()
                                    .frame(width:80,height: 80)
                                    .background(.white)
                                    .foregroundStyle(.white)
                                    .cornerRadius(15)
                                    .shadow(color:.darkgreen, radius: 5 )
                                Text("Airbnb")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.darkgreen)
                                
                            }
                        }
                            
                        Link(destination: URL(string: "https://www.Expedia.fr")!) {
                            VStack{
                                Image (.expedia)
                                    .resizable()
                                    .frame(width:80,height: 80)
                                    .background(.white)
                                    .foregroundStyle(.white)
                                    .cornerRadius(15)
                                    .shadow(color:.darkgreen, radius: 5 )
                                Text("Expedia")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.darkgreen)
                            }
                        }
                        Link(destination: URL(string: "https://www.Tripadvisor.fr")!) {
                            VStack{
                                Image (.tripadvisor)
                                    .resizable()
                                    .frame(width:80,height: 80)
                                    .background(.white)
                                    .foregroundStyle(.white)
                                    .cornerRadius(15)
                                    .shadow(color:.darkgreen, radius: 5 )
                                Text("Tripadvisor")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.darkgreen)
                            }
                        }
                        }
                    .padding()
                        
                        VStack{
                            //Spacer()
                            LabelledDivider(label:"Transports")
                                .font(.title2)
                                .fontWeight(.bold)
                            
                            HStack(spacing:20){
                                
                                Link(destination: URL(string: "https://www.flixbus.fr/")!) {
                                    VStack{
                                        Image (.bus)
                                            .resizable()
                                            .frame(width:80,height: 80)
                                            .background(.white)
                                            .foregroundStyle(.white)
                                            .cornerRadius(15)
                                            .shadow(color:.darkgreen, radius: 5 )
                                        Text("Bus")
                                            .font(.title3)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.darkgreen)
                                    }
                                }
                                Link(destination: URL(string: "https://www.uber.com/fr/fr/")!) {
                                    VStack{
                                        Image (.taxi)
                                            .resizable()
                                            .frame(width:80,height: 80)
                                            .background(.white)
                                            .foregroundStyle(.white)
                                            .cornerRadius(15)
                                            .shadow(color:.darkgreen, radius: 5 )
                                        Text("Taxi")
                                            .font(.title3)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.darkgreen)
                                    }
                                }
                                Link(destination: URL(string: "https://www.velib-metropole.fr")!) {
                                    VStack{
                                        Image (.vélo)
                                            .resizable()
                                            .frame(width:80,height: 80)
                                            .background(.white)
                                            .foregroundStyle(.white)
                                            .cornerRadius(15)
                                            .shadow(color:.darkgreen, radius: 5 )
                                        Text("Vélo")
                                            .font(.title3)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.darkgreen)
                                    }
                                }
                            }
                            .padding()
                           // Spacer()
                            VStack{
                                LabelledDivider(label:"Comparateurs")
                                    .font(.title2)
                                .fontWeight(.bold)}
                            HStack(spacing:20){
                                
                                Link(destination: URL(string: "https://www.kayak.fr")!) {
                                    VStack{
                                        Image (.kayak)
                                            .resizable()
                                            .frame(width:80,height: 80)
                                            .background(.white)
                                            .foregroundStyle(.white)
                                            .cornerRadius(15)
                                            .shadow(color:.darkgreen, radius: 5 )
                                        Text("Kayak")
                                            .font(.title3)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.darkgreen)
                                    }
                                }
                                Link(destination: URL(string: "https://www.opodo.fr")!) {
                                    VStack{
                                        Image (.opodo)
                                            .resizable()
                                            .frame(width:80,height: 80)
                                            .background(.white)
                                            .foregroundStyle(.white)
                                            .cornerRadius(15)
                                            .shadow(color:.darkgreen, radius: 5 )
                                        Text("Opodo")
                                            .font(.title3)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.darkgreen)
                                    }
                                }
                                Link(destination: URL(string: "https://www.liligo.fr")!) {
                                    VStack{
                                        Image (.liligo)
                                            .resizable()
                                            .frame(width:80,height: 80)
                                            .background(.white)
                                            .foregroundStyle(.white)
                                            .cornerRadius(15)
                                            .shadow(color:.darkgreen, radius: 5 )
                                        Text("Liligo")
                                            .font(.title3)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.darkgreen)
                                    }
                                }
                }
                            .padding()
                            Spacer()
    }
    }
    }
    }
    }
    }
#Preview {
    BesoinAide()
}
