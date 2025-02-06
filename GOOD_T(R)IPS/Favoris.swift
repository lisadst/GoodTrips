//
//  Favoris.swift
//  ProjetGoodTrips
//
//  Created by apprenant79 on 28/01/2025.
//

import SwiftUI

struct Favoris: View {
    @State private var searchText = ""
    @ObservedObject var favs = favoris
    @ObservedObject var postfavs = postfavoris
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack{
                    Text("Top destinations")
                        .font(.title)
                        .fontWeight(.bold)
                    ScrollView(.horizontal){
                        HStack(spacing:30){
                            ForEach(favs.favoris) {
                                slideDestination(cardDestination: $0)
                            }
                            
                        }
                    }
                   Text("Actualités")
                        .font(.title)
                        .fontWeight(.bold)
                    /*VStack(spacing:20){
                        CardJB(card: cardNews[0])
                        CardJB(card: cardNews[1])
                        CardJB(card: cardNews[2])
                    }*/
                    ForEach(postfavs.postfavoris) {
                        CardJB(card: $0)
                    }
                }
              
                    .navigationTitle("Favoris")
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            NavigationLink(destination: Text("Profil"), label: {
                                Image(systemName:"person.crop.circle.fill")
                                    .foregroundColor(.black)
                            })
                        }
                        ToolbarItem(placement: .topBarTrailing) {
                            NavigationLink(destination: Page_notifications(), label: {
                                Image(systemName:"bell")
                                    .foregroundColor(.black)
                            })
                        }
                    }
                }
                
                .searchable(text: $searchText)
            }
        }
    
}

#Preview {
    Favoris()
}
