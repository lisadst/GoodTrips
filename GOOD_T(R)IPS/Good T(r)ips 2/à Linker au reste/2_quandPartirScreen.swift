//
//  quandPartirScreen.swift
//  CarlaKroft
//
//  Created by apprenant75 on 26/01/2025.
//

import SwiftUI

struct quandPartirScreen: View {
    @ObservedObject var quandPartir = trip
    
    @State var towardsCalendar: Bool = false
    @State var towardsQuestions: Bool = false
    
    
    var body: some View {
        NavigationStack{
            VStack {
                Spacer(minLength: 40)
                Text("Savez vous quand partir?")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 100)
                
                Button {
                    quandPartir.quandPartir = true
                    towardsCalendar.toggle()
                } label: {
                    Spacer(minLength: 300)
                    
                    ZStack {
                        
                        Rectangle()
                            .fill(.darkgolden)
                            .frame(width: 400,height: 200)
                            .cornerRadius(100)
                        HStack {
                            Text("OUI")
                                .foregroundStyle(.white)
                                .font(.system(size: 90))
                                .fontWeight(.bold)
                            Spacer()
                        }
                    }
                }
                
                NavigationLink("", destination: __calendarScreen(), isActive: $towardsCalendar)
                
                Button {
                    towardsQuestions.toggle()
                    quandPartir.quandPartir = false
                } label: {
                    HStack {
                        ZStack {
                            Rectangle()
                                .fill(.eggshell)
                                .frame(width: 400,height: 200)
                                .cornerRadius(100)
                            
                            
                            HStack {
                                Spacer()
                                Text("NON")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 90))
                                    .fontWeight(.bold)
                            }
                        }
                        Spacer(minLength: 300)
                    }
                }
                
                NavigationLink("", destination: Question1Screen(), isActive: $towardsQuestions)
                
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        unVoyageScreen()
                    } label: {
                        Image(systemName: "arrow.trianglehead.counterclockwise")
                            .foregroundStyle(.darkgolden)
                            .font(.system(size: 20))
                            .padding(.trailing,30)
                    }

                }
            }
        }
        
    }
}

#Preview {
    quandPartirScreen()
}
