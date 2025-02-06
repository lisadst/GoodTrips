//
//  5_mailScreen.swift
//  CarlaKroft
//
//  Created by apprenant75 on 28/01/2025.
//

import SwiftUI

class GuestMail: Identifiable, ObservableObject{
    let id = UUID()
    @Published var emailField : String
    

    init(emailField: String = "") {
        self.emailField = emailField
    }
}

struct MailScreenView: View {
    @State var emailField : String = ""
    @State var numberOfGuest : Int = 1
    var body: some View {
        NavigationStack{
            VStack {
                Text("Du monde à\n inviter?")
                    .font(.system(size: 40))
                    .multilineTextAlignment(.center)
                    .fontWeight(.bold)
                ForEach(1...numberOfGuest, id: \.self) { newLine in
                    newGuestMailFieldExtracted(numberOfGuest: $numberOfGuest, emailField: $emailField)
                }
                NavigationLink {
                    quandPartirScreen()
                } label: {
                    Text("VALIDER")
                        .fontWeight(.black)
                        .font(.system(size: 40))
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        unVoyageScreen()
                    } label: {
                        Image(systemName: "arrow.trianglehead.counterclockwise")
                            .font(.system(size: 20))
                            .padding(.trailing,30)
                    }

                }
            }
        }
    }
}

#Preview {
    MailScreenView()
}

