//
//  slideDestination.swift
//  ProjetGoodTrips
//
//  Created by apprenant79 on 28/01/2025.
//

import SwiftUI

struct slideDestination: View {
    var cardDestination: destinationTop
    @ObservedObject var favList = favoris
    var isfav : Bool{
        for fav in favoris.favoris {
            if fav.name == cardDestination.name{
                return true
            }
        }
        return false
    }
    var body: some View {
        NavigationStack{
            ZStack{
                Image(cardDestination.photo)
                    .resizable()
                    .frame(width:200, height:200)
                    .scaledToFill()
                    .cornerRadius(20)
                
                Button(action: {
                    if let index = favoris.favoris.firstIndex(where: { $0.id == cardDestination.id }) {
                        favoris.favoris.remove(at: index)
                    } else {
                        favoris.favoris.append(cardDestination)
                    }
                    
                },label: {
                    Image(systemName: isfav ? "heart.fill" : "heart")
                        .resizable()
                        .frame(width:30, height:30)
                        .foregroundColor(.white)
                }) .offset(x:65, y:-65)
                NavigationLink(destination:(articleDestination(city:cardDestination)), label:{
                    Text(cardDestination.name)
                        .font(.system(size:50))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                })
            }
        }
    }
}

#Preview {
    slideDestination(cardDestination: destinations[0])
}
