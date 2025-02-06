//
//  PROFIL3_SETTINGS.swift
//  AFP2025
//
//  Created by apprenant82 on 28/01/2025.
//

import SwiftUI

struct PROFIL3_SETTINGS: View {
    
    @State var notifOn = false
    @State var isOn = false
    @State var online = false
    @State var localOn = false
    
    var body: some View {
        
        NavigationStack{
            VStack{
                Toggle(isOn: $notifOn, label: {
                    Text("Notifications")
                })
                .padding()
                .fontWeight(.bold)
                .frame(width: 330, height: 50)
                .background(.saffron)
                .cornerRadius(10.0)
                .padding(.bottom,20)
                .foregroundColor(.cerulean)
                
                Toggle(isOn: $isOn, label: {
                    Text("Dark mode")
                })
                .fontWeight(.bold)
                .padding()
                .frame(width: 330, height: 50)
                .background(.saffron)
                .cornerRadius(10.0)
                .padding(.bottom,20)
                .foregroundColor(.cerulean)
                
                Toggle(isOn: $online, label: {
                    Text("Mode hors ligne")
                })
                .fontWeight(.bold)
                .padding()
                .frame(width: 330, height: 50)
                .background(.saffron)
                .cornerRadius(10.0)
                .padding(.bottom,20)
                .foregroundColor(.cerulean)
                
                
                Toggle(isOn: $localOn, label: {
                    Text("Localisation")
                })
                .fontWeight(.bold)
                .padding()
                .frame(width: 330, height: 50)
                .background(.saffron)
                .cornerRadius(10.0)
                .padding(.bottom,20)
                .foregroundColor(.cerulean)
                
               /* NavigationLink(destination: PROFIL4_PASSWORD(), label: {
                    HStack{
                        Text("Changer le mot de passe ")
                        Image(systemName: "pencil")}
                    .fontWeight(.bold)
                    .padding()
                    .frame(width: 330, height: 50)
                    .background(.saffron)
                    .cornerRadius(10.0)
                    .padding(.bottom,20)
                    .foregroundColor(.cerulean)
                })*/
                
                
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
        
        .preferredColorScheme(isOn ? .dark : .light)
      
    }
  
}

#Preview {
    PROFIL3_SETTINGS()
}
