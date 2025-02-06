//
//  Data_notifications.swift
//  ProjetGoodTrips
//
//  Created by apprenant79 on 03/02/2025.
//

import Foundation

struct notification: Identifiable{
    var id=UUID()
    var pp:String
    var icon: String
    var texte:String
}

var notifications: [notification] = [notification(pp: "Maxime", icon: "heart.fill", texte: "Maxime a aimé votre post"),
                                     notification(pp: "brad", icon:"bubble.fill", texte: "Brad à commenté : Je suis à l'hopital j'ai besoin de 800 000€ Anne"),
                                     notification(pp: "Michel", icon:"heart.fill", texte: "Michel a aimé votre post"),
                                     notification(pp: "Maxime2", icon: "heart.fill", texte: "Maurice a aimé votre post"),
                                     notification(pp: "Profil 2", icon:"bubble.fill", texte: "Alice à commenté : Très jolie vue!"),
                                     notification(pp: "Profil 3", icon:"heart.fill", texte: "Jack a aimé votre post"),
                                     notification(pp: "Profil 4", icon: "heart.fill", texte: "Patrick a aimé votre post"),
                                     notification(pp: "PP1", icon: "heart.fill", texte: "Sunny a aimé votre post"),
                                     notification(pp: "Profil 5", icon:"bubble.fill", texte: "Rose à commenté : Pas mal! 👌")]
