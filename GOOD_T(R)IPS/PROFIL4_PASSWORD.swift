//
//  PROFIL4_PASSWORD.swift
//  AFP2025
//
//  Created by apprenant82 on 28/01/2025.
//

import SwiftUI

struct PROFIL4_PASSWORD: View {
    
    
    @State var password: String = ""
    @State var newPassword1: String = ""
    @State var newPassword2: String = ""
    @State var showPassword1: Bool = false
    @State var showPassword2: Bool = false
    @State var modal_fullscreen = false
    
    var isSignInButtonDisabled: Bool {
        [password, newPassword1, newPassword2].contains(where: \.isEmpty)
    }
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 15) {
                

                HStack {
                   
                            TextField("Ancien mot de passe",
                                      text: $password,
                                      prompt: Text("Ancien mot de passe").foregroundColor(.darkgolden))
                    
                            
                    .padding(10)
                    .frame(width:335)
                    .overlay{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.darkgreen, lineWidth: 2)
                        
                    }
                    .background(.saffron)
                    .cornerRadius(10)
                    
                }
                
                .padding(.horizontal)
                
                HStack {
                    Group {
                        if showPassword1 {
                            TextField("Nouveau mot de passe",
                                      text: $newPassword1,
                                      prompt: Text("Nouveau mot de passe").foregroundColor(.darkgolden))
                        } else {
                            SecureField("Nouveau mot de passe",
                                        text: $newPassword1,
                                        prompt: Text("Nouveau mot de passe").foregroundColor(.darkgolden))
                            
                        }
                        
                    }
                    
                    .padding(10)
                    .overlay{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.darkgreen, lineWidth: 2)
                        
                    }
                    .background(.saffron)
                    .cornerRadius(10)
                    
                    Button {
                        showPassword1.toggle()
                    } label: {
                        Image(systemName: showPassword1 ? "eye.slash" : "eye")
                            .foregroundColor(.darkgolden)
                    }
                    
                }
                
                .padding(.horizontal)
                
                HStack {
                    Group {
                        if showPassword2 {
                            TextField("Nouveau mot de passe",
                                      text: $newPassword2,
                                      prompt: Text("Nouveau mot de passe").foregroundColor(.darkgolden))
                        } else {
                            SecureField("Nouveau mot de passe",
                                        text: $newPassword2,
                                        prompt: Text("Nouveau mot de passe").foregroundColor(.darkgolden))
                            
                        }
                        
                    }
                    
                    .padding(10)
                    .overlay{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.darkgreen, lineWidth: 2)
                        
                    }
                    .background(.saffron)
                    .cornerRadius(10)
                    
                    Button {
                        showPassword2.toggle()
                    } label: {
                        Image(systemName: showPassword2 ? "eye.slash" : "eye")
                            .foregroundColor(.darkgolden)
                    }
                    
                }
                
                .padding(.horizontal)
                
                
                Button(action: {
                    
                    modal_fullscreen.toggle()
                       
                },label: {
                    Text("Valider")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                        .sheet(isPresented: $modal_fullscreen){
                            ZStack{
                                Color.darkgolden
                                HStack{
                                    Text("Mot de passe changé")
                                        .font(.system(size:30))
                                    Image(systemName: "checkmark.square")
                                        .font(.system(size:50))
                                }
                                
                                .foregroundColor(.darkgreen)
                                
                                
                            }
                            
                        }
                })
                    
                .frame(height: 50)
                .frame(width: 150)
                .background(
                    isSignInButtonDisabled ?
                    LinearGradient(colors: [.gray], startPoint: .topLeading, endPoint: .bottomTrailing) :
                        LinearGradient(colors: [.darkgreen], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .cornerRadius(80)
                .disabled(isSignInButtonDisabled) // how to disable while some condition is applied
                .padding()
                .padding(.leading,100)
            }
        }
    }
}
#Preview {
    PROFIL4_PASSWORD()
}
