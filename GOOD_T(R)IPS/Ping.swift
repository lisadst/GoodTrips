//
//  notification.swift
//  ProjetGoodTrips
//
//  Created by apprenant79 on 03/02/2025.
//

import SwiftUI

struct Ping: View {
    var notif: notification
    var body: some View {
        HStack{
           
            ZStack{
                Image(notif.pp)
                    .resizable()
                    .scaledToFill()
                    .frame(width:70)
                    .clipShape(Circle())
                ZStack{
                    Color(.eggshell)
                        .frame(width:40, height:35)
                        .clipShape(Circle())
                        .offset(x:30, y:25)
                    Image(systemName:notif.icon)
                        .offset(x:30, y:25)
                        .font(.system(size:20))
                        .foregroundColor(.darkgreen)
                }
            }
            .padding(.trailing)
            Text(notif.texte)
                .frame(width:250)
       
        }
        .padding()
        .frame(width:800, height:100)
        .background(.eggshell)
    }
}

#Preview {
    Ping(notif: notifications[1])
}
