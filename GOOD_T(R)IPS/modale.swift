//
//  modale.swift
//  ProjetGoodTrips
//
//  Created by apprenant79 on 28/01/2025.
//

import SwiftUI

struct modale: View {
    @State private var showingCredits = false
    
    var body: some View {
        
        ZStack {
            
            TabView {
                
                Tab("Explore", systemImage:"globe"){
                    
                }
                
                Tab("Messagerie", systemImage: "text.bubble.fill"){
                    
                }
                
                Tab("", systemImage: ""){
                    
                }
                
                Tab("Checklist", systemImage: "list.dash"){
                    
                }
                Tab("Blog", systemImage: "paperplane.fill"){
                    
                }
                
            }
            
            Button(action:{ showingCredits.toggle()
            }, label:{
                Image(systemName:"plus.circle.fill")
            } )
            .font(.system(size:60))
            .foregroundStyle(.yellow)
            .offset(x:0,y:80)
            .sheet(isPresented: $showingCredits) {
                Button(action: {showingCredits.toggle()}, label:{ Image(systemName:"xmark")})
                    .foregroundColor(.black)
                    .offset(x:180, y:10)
                Spacer()
                NavigationStack{
                    NavigationLink(destination: Text("Questionnaire"), label: {
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
                        
                        .presentationDetents([.height(1000)])
                    
                }
            }
        }
    }
}
#Preview {
    modale()
}
