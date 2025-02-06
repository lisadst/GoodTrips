//
//  Page_notifications.swift
//  ProjetGoodTrips
//
//  Created by apprenant79 on 03/02/2025.
//

import SwiftUI

struct Page_notifications: View {
    var body: some View {
        ScrollView{
            HStack{
                Text("Aujourd'hui")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.trailing,240)
            }
            Ping(notif: notifications[2])
            Ping(notif: notifications[1])
            Ping(notif: notifications[3])
            Ping(notif: notifications[0])
            HStack{
                Text("7 derniers jours")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.trailing,210)
            }
            Ping(notif: notifications[6])
            Ping(notif: notifications[7])
            HStack{
                Text("Ce mois-ci")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.trailing,250)
            }
            Ping(notif: notifications[5])
            Ping(notif: notifications[3])
            Ping(notif: notifications[8])
        }
    }
}

#Preview {
    Page_notifications()
}
