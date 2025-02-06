//
//  PROFIL5_SIGNUP.swift
//  AFP2025
//
//  Created by apprenant82 on 28/01/2025.
//

import SwiftUI

struct PROFIL5_SIGNUP: View {
    
    @State var username: String = ""
    @State var mail: String = ""
    @State var password: String = ""
    @State var showPassword: Bool = false
    @State private var birthDate = Date.now
    
    var isSignInButtonDisabled: Bool {
        [username, mail, password].contains(where: \.isEmpty)
    }
    
    var body: some View {
        NavigationStack{
            HStack{
                TextField(("Pseudo"), text: $username)
                Image(systemName: "pencil")}
            .fontWeight(.bold)
            .padding()
            .frame(width: 330, height: 50)
            .background(.eggshell)
            .cornerRadius(10.0)
            .padding(.bottom,20)
            .foregroundColor(.darkgolden)
            
            
            HStack{
                DatePicker(selection: $birthDate, in: ...Date.now, displayedComponents: .date) {
                    Text("Date de naissance :")
                }}
            .fontWeight(.bold)
            .padding()
            .frame(width: 330, height: 50)
            .background(.eggshell)
            .cornerRadius(10.0)
            .padding(.bottom,20)
            .foregroundColor(.gray)
            
            HStack{
                TextField(("Adresse@mail"), text: $mail)
                Image(systemName: "pencil")}
            .fontWeight(.bold)
            .padding()
            .frame(width: 330, height: 50)
            .background(.eggshell)
            .cornerRadius(10.0)
            .padding(.bottom,20)
            .foregroundColor(.darkgolden)
            
            HStack{
                if showPassword {
                    TextField("Mot de passe",
                              text: $password,
                              prompt: Text("Mot de passe").foregroundColor(.darkgolden))
                } else {
                    SecureField("Mot de passe",
                                text: $password,
                                prompt: Text("Mot de passe").foregroundColor(.gray))
                    
                }
                Button {
                    showPassword.toggle()
                } label: {
                    Image(systemName: showPassword ? "eye.slash" : "eye")
                        .foregroundColor(.darkgolden)
                }}
            .fontWeight(.bold)
            .padding()
            .frame(width: 330, height: 50)
            .background(.eggshell)
            .cornerRadius(10.0)
            .padding(.bottom,20)
            .foregroundColor(.darkgolden)
            
            
            
            
            
            
            NavigationLink(destination: PROFIL2()
            ,label: {
            Text("Rejoins nous !")
                .font(.title2)
                .bold()
                .foregroundColor(.white)
           })
           .frame(height: 50)
           .frame(width: 200)
           .background(
            isSignInButtonDisabled ?
            LinearGradient(colors: [.darkgolden], startPoint: .topLeading, endPoint: .bottomTrailing) :
                LinearGradient(colors: [.darkgreen], startPoint: .topLeading, endPoint: .bottomTrailing)
           )

           .cornerRadius(20)
           .disabled(isSignInButtonDisabled)
           .padding()
           .padding()
           }
            
        }
    
}

#Preview {
    PROFIL5_SIGNUP()
}
/*

 
 
 
 
 NavigationLink(destination: PROFIL2(),
                label: {
     Text("Rejoins nous !")
         .underline()
         .fontWeight(.bold)
         .padding()
         .frame(width: 170, height: 50)
         .background(.darkgreen)
         .cornerRadius(10.0)
         .padding(.bottom,20)
         .foregroundColor(.eggshell)
         .disabled(isSignInButtonDisabled)
 })
 */
