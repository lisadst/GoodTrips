//
//  Messagerie.swift
//  messagerie2
//
//  Created by apprenant113 on 31/01/2025.
//

import SwiftUI

struct Messagerie: View {
    @State private var searchText = ""
    var filteredGroup: [itemMessagerie] {
        itemsMessagerie.filter { group in
            searchText.isEmpty || group.groupTitle.localizedCaseInsensitiveContains(searchText)
        }
    }
    
    var body: some View {
        NavigationStack{
            ScrollView{
                if !filteredGroup.isEmpty {
                    
                    
                    ForEach(filteredGroup, id: \.id) { group in
                        GroupTchat(group: group)
                    }
                    
                    
                    
                    }
                }
            .navigationTitle("Messagerie")
            
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: PROFIL1(), label: {
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


#Preview {
    Messagerie()
}
