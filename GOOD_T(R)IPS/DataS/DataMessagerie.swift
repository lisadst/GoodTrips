//
//  DataMessagerie.swift
//  messagerie2
//
//  Created by apprenant113 on 31/01/2025.
//

import Foundation

struct itemMessagerie: Identifiable{
    var id=UUID()
    var groupTitle: String
    var profilPictures1: String
    var profilPictures2: String
    var profilPictures3: String
    var lastMessage: String
    var day:String
}

var itemsMessagerie: [itemMessagerie] = [itemMessagerie(groupTitle: "Tokyo", profilPictures1: "brad", profilPictures2: "Michel", profilPictures3: "Maxime", lastMessage: "c'est cool", day:"Hier"),
                                         itemMessagerie(groupTitle: "Londres", profilPictures1: "PP1", profilPictures2: "Profil 2", profilPictures3: "Profil 3", lastMessage: "Que pensez-vous de ce logement ?", day:"Jeudi"),
                                         itemMessagerie(groupTitle: "Madrid", profilPictures1: "Profil 4", profilPictures2: "Profil 5", profilPictures3: "", lastMessage: "Ce serait bien de goûter ce restaurant.", day:"34 min ago")]


