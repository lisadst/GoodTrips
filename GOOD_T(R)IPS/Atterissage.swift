//
//  Atterissage.swift
//  ProjetGoodTrips
//
//  Created by apprenant79 on 28/01/2025.
//

import SwiftUI

struct Atterissage: View {
    @State private var searchText = ""
    
    // Filtered destinations based on search text
    var filteredDestinations: [destinationTop] {
        destinations.filter { destination in
            searchText.isEmpty || destination.name.localizedCaseInsensitiveContains(searchText)
        }
    }
    
    // Filtered posts based on search text
    var filteredPosts: [cardJB] {
        cardNews.filter { post in
            searchText.isEmpty || post.title.localizedCaseInsensitiveContains(searchText)
        }
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    questionnaireBouton(emailField: .constant(""), numberOfGuest: .constant(1))
                        .padding(.top, 25)
                        .padding(.bottom, 25)
                    
                    // Top Destinations (Show only if there are results)
                    if !filteredDestinations.isEmpty {
                        Text("Top destinations")
                            .padding(.bottom, 15)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        ScrollView(.horizontal) {
                            HStack(spacing: 30) {
                                // Use filteredDestinations instead of static indexes
                                ForEach(filteredDestinations, id: \.id) { destination in
                                    slideDestination(cardDestination: destination)
                                }
                            }
                        }
                    }
                    
                    // Recent Posts (Show only if there are results)
                    if !filteredPosts.isEmpty {
                        Text("Posts récents")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.top, 15)
                        
                        VStack {
                            // Use filteredPosts instead of static indexes
                            ForEach(filteredPosts, id: \.id) { post in
                                CardJB(card: post)
                            }
                        }
                    }
                    
                    // Show a "No Results" message if nothing is found
                    if filteredDestinations.isEmpty && filteredPosts.isEmpty && !searchText.isEmpty {
                        Text("Aucun résultat trouvé")
                            .foregroundColor(.gray)
                            .padding()
                    }
                }
            }
            .navigationTitle("Good T(r)ips")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: PROFIL1(), label: {
                        Image(systemName: "person.crop.circle.fill")
                            .foregroundColor(.black)
                    })
                }
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: Page_notifications(), label: {
                        Image(systemName: "bell")
                            .foregroundColor(.black)
                    })
                }
            }
        }
        .searchable(text: $searchText)
    }
}

#Preview {
    Atterissage()
}
