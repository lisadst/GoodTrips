//
//  PROFIL1.swift
//  AFP2025
//
//  Created by apprenant82 on 04/02/2025.
//

import SwiftUI

struct PROFIL1: View {
    @State var name: String = ""
    @State var password: String = ""
    @State var showPassword: Bool = false
    
    var isSignInButtonDisabled: Bool {
        [name, password].contains(where: \.isEmpty)
    }
    
    var body: some View {
        NavigationStack{
            Image("Logo")
                .resizable()
                .scaledToFit()
                .frame(width:300)
                .padding(.bottom,20)
            VStack(alignment: .leading, spacing: 15) {
                
                TextField("Adresse mail",
                          text: $name ,
                          prompt: Text("Adresse mail").foregroundColor(.darkgolden)
                )
                .padding(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.darkgreen, lineWidth: 2)
                }
                .background(.saffron)
                .cornerRadius(10)
                .padding(.horizontal)
                
                HStack {
                    Group {
                        if showPassword {
                            TextField("Mot de passe",
                                      text: $password,
                                      prompt: Text("Mot de passe").foregroundColor(.darkgolden))
                        } else {
                            SecureField("Mot de passe",
                                        text: $password,
                                        prompt: Text("Mot de passe").foregroundColor(.darkgolden))
                            
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
                        showPassword.toggle()
                    } label: {
                        Image(systemName: showPassword ? "eye.slash" : "eye")
                            .foregroundColor(.darkgolden)
                    }
                    
                    
                }
                
                .padding(.horizontal)
                
                
                
                    NavigationLink(destination: PROFIL2()
                    ,label: {
                    Text("Connexion")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                })
                .frame(height: 50)
                .frame(width: 200)
                .background(
                    isSignInButtonDisabled ?
                    LinearGradient(colors: [.gray], startPoint: .topLeading, endPoint: .bottomTrailing) :
                        LinearGradient(colors: [.darkgreen], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                
                .cornerRadius(20)
                .disabled(isSignInButtonDisabled)
                .padding()
                .padding(.leading,80)
            }
            NavigationLink(destination: PROFIL5_SIGNUP(), label: {
                                Text("Deviens un T(r)ipeur")
                                    .padding()
                                    .foregroundColor(.saffron)
                                    .underline()
                            })
        }
    }
}
#Preview {
    PROFIL1()
}
