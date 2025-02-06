//
//  SearchBar.swift
//  ProjetGoodTrips
//
//  Created by apprenant79 on 28/01/2025.
//

import SwiftUI

struct SearchBar: View {
    @State private var searchText = ""
    var screenTitle : String
    var body: some View {
        NavigationStack {
            HStack{
                Image(systemName:"person.crop.circle.fill")
                    .font(.system(size:20))
                
                Image(systemName:"bell")
                    .font(.system(size:20))
                
            }
            .navigationTitle(screenTitle)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: Text("Profil"), label: {
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

#Preview {
    SearchBar(screenTitle: "Title")
}
