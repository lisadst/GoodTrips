//
//  ContentView.swift
//  ProjetGoodTrips
//
//  Created by apprenant79 on 28/01/2025.
//

import SwiftUI

struct TabBar: View {
    @Binding var emailField : String
    @Binding var numberOfGuest : Int
    @State private var showingCredits = false
    
    var body: some View {
        ZStack{
            
            ZStack {
                
                TabView {
                    
                    Tab("Explore", systemImage:"globe"){
                        Atterissage()
                    }
                    
                    Tab("Messagerie", systemImage: "text.bubble.fill"){
                        Messagerie()
                    }
                    
                    Tab("", systemImage: ""){
                        
                    }
                    
                    Tab("Checklist", systemImage: "list.dash"){
                        CheckList()
                    }
                    Tab("Blog", systemImage: "paperplane.fill"){
                        JOURNAUX_BORDS()
                    }
                    
                }
                Button(action:{ showingCredits.toggle()
                }, label:{
                    Image(systemName:"plus.circle.fill")
                } )
                .font(.system(size:60))
                .foregroundStyle(.yellow)
                .offset(x:0,y:350)
                .sheet(isPresented: $showingCredits) {
                    Button(action: {showingCredits.toggle()}, label:{ Image(systemName:"xmark")})
                        .foregroundColor(.black)
                        .offset(x:180, y:10)
                    Spacer()
                    NavigationStack{
                        NavigationLink(destination: unVoyageScreen(), label: {
                            Text("Créer un voyage")
                                .font(.title)
                                .foregroundColor(.black)
                                .fontWeight(.semibold)
                                .frame(width:300)
                                .padding(30)
                                .background(.saffron)
                                .cornerRadius(15)
                        })
                       
                        
                        NavigationLink(destination: NewPost(), label: {Text("Créer un nouveau post")
                                .font(.title)
                                .foregroundColor(.black)
                                .fontWeight(.semibold)
                                .frame(width:300)
                                .padding(30)
                                .background(.saffron)
                                .cornerRadius(15)
                            
                        })
                        
                       
                        
                        .presentationDetents([.height(900)])
                        
                    }
                }
                
            }
          
        }
        
        
    }
    
}


#Preview {
    TabBar(emailField: .constant(""), numberOfGuest: .constant(1))
}
