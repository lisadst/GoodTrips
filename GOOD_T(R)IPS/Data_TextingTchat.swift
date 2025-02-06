//
//  Data_TextingTchat.swift
//  ProjetGoodTrips
//
//  Created by apprenant79 on 03/02/2025.
//

import Foundation

struct Message: Identifiable {
    let id = UUID()
    let text: String
    let isUser: Bool
    let timestamp: Date
}
