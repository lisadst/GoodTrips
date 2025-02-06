//
//  recapClassExtracted.swift
//  CarlaKroft
//
//  Created by apprenant75 on 04/02/2025.
//

import Foundation
import SwiftUI

class RecapClassExtracted: ObservableObject{
@Published var unVoyageSolo: Bool
@Published var guestMail: String
@Published var quandPartir: Bool
@Published var question1: [String]
@Published var question2: [String]
@Published var calendarDeparture: Date
@Published var calendarReturn: Date
@Published var listDestination: [String]
    
    init(unVoyageSolo: Bool = false, guestMail: String = "", quandPartir: Bool = false, question1: [String] = [], question2: [String] = [], calendar: Date = Date.now, listDestination: [String] = [])
    {
        self.unVoyageSolo = unVoyageSolo
        self.guestMail = guestMail
        self.quandPartir = quandPartir
        self.question1 = question1
        self.question2 = question2
        self.calendarDeparture = calendar
        self.calendarReturn = calendar
        self.listDestination = listDestination
    }
}

// toutes les réponses sont répertoriées dans ma var trip
var trip = RecapClassExtracted()
