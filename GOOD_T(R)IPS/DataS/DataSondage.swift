//
//  DataSondage.swift
//  ProjetGoodTrips
//
//  Created by apprenant79 on 04/02/2025.
//

import Foundation

struct SurveyMessage: Identifiable {
    var id = UUID()
    var question: String
    var options1: String
    var options2: String
    var options3: String
 
}

var survey : [SurveyMessage] = [SurveyMessage(question: "Quel logement préférez-vous ?", options1: "Logement bord de mer", options2: "Logement centre ville", options3 : "Logement avec piscine")]
