//
//  Historique.swift
//  ProjetGoodTrips
//
//  Created by apprenant79 on 31/01/2025.
//

import SwiftUI

struct Historique: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack{
            ScrollView{
                
                Card_historique(card: cardNews[16])
                Card_historique(card: cardNews[4])
                Card_historique(card: cardNews[8])
                Card_historique(card: cardNews[10])
                
                    .navigationTitle("Historique")
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            NavigationLink(destination: PROFIL1(), label: {
                                Image(systemName:"person.crop.circle.fill")
                            })
                        }
                        ToolbarItem(placement: .topBarTrailing) {
                            NavigationLink(destination: Text("Notif"), label: {
                                Image(systemName:"bell")
                                    .font(.system(size:20))
                            })
                        }
                    }
            }
            
            .searchable(text: $searchText)
        }
    }
    
}

#Preview {
    Historique()
}
