//
//  PROFIL2.swift
//  AFP2025
//
//  Created by apprenant82 on 28/01/2025.
//

import SwiftUI
import PhotosUI

struct PROFIL2: View {
    @State var username: String = ""
    /* @State var age = Int*/
    @State var modal_pp = false
    @State var modal_password = false
    @State var mail = ""
    @State private var selectedImage: UIImage?
    @State private var selectedItem: PhotosPickerItem?

    
    var body: some View {
        
        VStack{
            NavigationStack{
                if let image = selectedImage {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(.darkgreen,lineWidth:2)
                        )
                        .frame(width: 250, height: 250)
                } else {
                    Image("PP1")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(.darkgreen,lineWidth:2)
                        )
                        .frame(width: 250, height: 250)
                }
                HStack{
                    Spacer()
                    
                    NavigationLink(destination: PROFIL3_SETTINGS(), label: {
                        Image(systemName: "gearshape")
                            .foregroundColor(.darkgreen)
                            .font(.system(size:30))
                    })
                    Spacer()
                    
                    Button(action: {
                        
                        modal_pp.toggle()
                        
                    },
                           
                           label: {
                        Image(systemName: "pencil")
                            .foregroundColor(.darkgreen)
                            .font(.system(size:30))
                            .sheet(isPresented: $modal_pp){
                                Text("Modifier la photo de profil")
                                    .font(.title2)
                                    .fontWeight(.medium)
                                    .foregroundColor(.black)
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
                                Button(action: {modal_pp.toggle()}, label:{
                                    Text("Valider")
                                        .foregroundColor(.black)
                                        .frame(width:200, height:50)
                                        .background(.saffron)
                                        .cornerRadius(80)
                                        .padding(.top,20)
                                })
                            }
                        
                        
                    })
                    Spacer()
                }}
            
            
            .padding()
            
            
        }
        ScrollView{
            Text("@SunnyStar")
                .fontWeight(.bold)
                .padding()
                .frame(width: 290, height: 50)
                //.background(.darkgolden)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.darkgolden, lineWidth: 2)
                    
                }
                .cornerRadius(10.0)
                .padding(.bottom,20)
                .foregroundColor(.darkgolden)
                
               
            Text("SunnyStar@cloud")
                .fontWeight(.bold)
                .padding()
                .frame(width: 290, height: 50)
               // .background(.darkgolden)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.darkgolden, lineWidth: 2)
                    
                }
                .cornerRadius(10.0)
                .padding(.bottom,20)
                .foregroundColor(.darkgolden)
            
            Button(action: {
                
                modal_password.toggle()
                
            }, label: {
                HStack{
                    Text("Mot de passe")
                    Image(systemName: "pencil")
                }
                    .fontWeight(.bold)
                    .padding()
                    .frame(width: 290, height: 50)
                    .background(.darkgolden)
                    .overlay{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.darkgreen, lineWidth: 2)
                        
                    }
                    .cornerRadius(10.0)
                    .padding(.bottom,20)
                    .foregroundColor(.eggshell)
                    .sheet(isPresented: $modal_password){
                        PROFIL4_PASSWORD()
                            .frame(width: 400, height: 270)
                        Button(action:{modal_password.toggle()},
                               label:{
                            NavigationLink(destination: Text("Valid"), label: {
                               /* Text("VALIDER")
                                    .fontWeight(.bold)
                                    .padding()
                                    .frame(width: 170, height: 50)
                                    .background(.darkgreen)
                                    .cornerRadius(10.0)
                                    .padding(.bottom,20)
                                    .foregroundColor(.eggshell)*/
                            })
                        })
                    }})
            
            NavigationLink(destination: Favoris(), label: {
                HStack{
                    Text("Favoris")
                        .fontWeight(.bold)
                    Image(systemName: "heart.fill")
                }
                .padding()
                .frame(width: 290, height: 50)
                .background(.darkgolden)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.darkgreen, lineWidth: 2)
                    
                }
                .cornerRadius(10.0)
                .padding(.bottom,20)
                .foregroundColor(.eggshell)
            })
            
            
            NavigationLink(destination: Historique(), label: {
                HStack{
                    Text("Historique")
                        .fontWeight(.bold)
                    Image(systemName: "clock.fill")
                }
                .padding()
                .frame(width: 290, height: 50)
                .background(.darkgolden)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.darkgreen, lineWidth: 2)
                    
                }
                .cornerRadius(10.0)
                .padding(.bottom,20)
                .foregroundColor(.eggshell)
            })
            
            NavigationLink(destination: PROFIL1(), label: {
                Text("DECONNEXION")
                    .fontWeight(.bold)
                    .padding()
                    .frame(width: 170, height: 50)
                    .background(.red)
                    .cornerRadius(10.0)
                    .padding(.bottom,20)
                    .foregroundColor(.eggshell)
            })
          
        }
        
    }
   
}


#Preview {
    PROFIL2()
}
