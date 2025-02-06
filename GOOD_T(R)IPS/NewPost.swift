//
//  NewPost.swift
//  ProjetGoodTrips
//
//  Created by apprenant79 on 29/01/2025.
//

import SwiftUI
import PhotosUI

struct NewPost: View {
    @State private var title: String = ""
    @State private var description: String = ""
    @State private var selectedImage: UIImage?
    @State private var selectedItem: PhotosPickerItem?
    @State private var showingCredits = false
    
    var body: some View {
        NavigationStack{
            VStack {
                PhotosPicker(selection: $selectedItem, matching: .images) {
                    if let image = selectedImage {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .frame(width:200, height: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 5)
                    } else {
                        Image(systemName:"plus.square")
                            .frame(width: 200, height: 200)
                            .font(.system(size:50))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity)
                            .background(Color.gray.opacity(0.2))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                .onChange(of: selectedItem) { newItem in
                    Task {
                        if let data = try? await newItem?.loadTransferable(type: Data.self),
                           let uiImage = UIImage(data: data) {
                            selectedImage = uiImage
                        }
                    }
                }
                
                TextField("Ajouter un Titre", text: $title)
                    .frame(height:50)
                    .background(.eggshell)
                    .cornerRadius(15)
                
                
                TextField("Ajouter une descrition", text: $description)
                    .frame(height:150)
                    .background(.eggshell)
                    .cornerRadius(15)
                
                
                Button(action:{ showingCredits.toggle()
                }, label:{
                    Text("Poster la publication")
             .padding()
             .background(.saffron)
             .foregroundColor(.black)
             .cornerRadius(30)
                } )
                .sheet(isPresented: $showingCredits) {
                    Text("Votre post a été publié! ✅")
                        .font(.title)
                    Button(action: {showingCredits.toggle()}, label:{ Image(systemName:"xmark")})
                        .foregroundColor(.black)
                        .offset(x:170, y:-370)
                }
                
            }
            .padding()
            
        }
        
    }
    
    struct BlogPost {
        let title: String
        let description: String
        let image: UIImage?
    }
    
}

#Preview {
    NewPost()
}
