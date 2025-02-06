//
//  PAGE_COMMENTAIRE.swift
//  AFP2025
//
//  Created by apprenant82 on 30/01/2025.
//

import SwiftUI

struct PAGE_COMMENTAIRE: View {
    
    var comment_page: comment
    
    var body: some View {
        HStack{
            Image(comment_page.image)
                .resizable()
                .scaledToFill()
                .frame(width:70)
                .clipShape(Circle())
            Spacer()
            VStack{
                Spacer()
                Text(comment_page.text)
                Spacer()
                HStack{
                    Spacer()
                        .padding(.trailing)
                        .padding(.trailing)
                    Image(systemName: comment_page.likeicon)
                    Text(comment_page.nblike.description)
                }
                
            }
            
        }
        
        .padding()
       
        .frame(width:370, height: 120)
        .background(.eggshell)
        .overlay{
            RoundedRectangle(cornerRadius: 10)
                .stroke(.darkgreen, lineWidth: 2)
            
        }
        .cornerRadius(10)
      
        
    }
}

#Preview {
    PAGE_COMMENTAIRE(comment_page: comments[0])
}
