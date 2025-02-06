//
//  recherchePaysDestinationData.swift
//  CarlaKroft
//
//  Created by apprenant75 on 29/01/2025.
//

import Foundation
import SwiftUI

var recherchePays : [String] = [
    "France", "Espagne", "États-Unis", "Chine", "Italie", "Turquie", "Mexique", "Allemagne", "Thaïlande", "Royaume-Uni",
    "Japon", "Autriche", "Grèce", "Russie", "Malaisie", "Hongrie", "Arabie Saoudite", "Pays-Bas", "Canada", "Pologne",
    "Corée du Sud", "Portugal", "Inde", "Ukraine", "Indonésie", "Viêt Nam", "Suède", "Belgique", "Australie", "Brésil",
    "Hong Kong", "Singapour", "Afrique du Sud", "Danemark", "Suisse", "Maroc", "Émirats arabes unis", "Argentine", "Irlande", "Égypte",
    "République tchèque", "Taïwan", "Chili", "Finlande", "Norvège", "Philippines", "Colombie", "Nouvelle-Zélande", "Israël", "Qatar",
    "Kazakhstan", "Macau", "Pérou", "Roumanie", "Pakistan", "Bahreïn", "Luxembourg", "Slovaquie", "Koweït", "Bulgarie",
    "Sri Lanka", "Oman", "Croatie", "Lituanie", "Estonie", "Slovénie", "Serbie", "Tunisie", "Lettonie", "Biélorussie",
    "Bangladesh", "Algérie", "Géorgie", "Islande", "Costa Rica", "Équateur", "Jordanie", "Bosnie-Herzégovine", "Uruguay", "Azerbaïdjan",
    "Liban", "Arménie", "Dominique", "Malte", "Panama", "Bolivie", "Cuba", "Chypre", "Madagascar", "Îles Fidji",
    "Monténégro", "Îles Maldives", "Maurice", "Myanmar", "Guatemala", "Mongolie", "Venezuela", "Ouzbékistan", "Kenya", "Seychelles"
]
var rechercheCapitales : [String] = [
    "Paris", "Madrid", "Washington, D.C.", "Pékin", "Rome", "Ankara", "Mexico", "Berlin", "Bangkok", "Londres",
    "Tokyo", "Vienne", "Athènes", "Moscou", "Kuala Lumpur", "Budapest", "Riyad", "Amsterdam", "Ottawa", "Varsovie",
    "Séoul", "Lisbonne", "New Delhi", "Kiev", "Jakarta", "Hanoï", "Stockholm", "Bruxelles", "Canberra", "Brasilia",
    "Hong Kong", "Singapour", "Pretoria", "Copenhague", "Berne", "Rabat", "Abu Dhabi", "Buenos Aires", "Dublin", "Le Caire",
    "Prague", "Taipei", "Santiago", "Helsinki", "Oslo", "Manille", "Bogota", "Wellington", "Jérusalem", "Doha",
    "Nour-Soultan", "Macau", "Lima", "Bucarest", "Islamabad", "Manama", "Luxembourg", "Bratislava", "Koweït", "Sofia",
    "Colombo", "Mascate", "Zagreb", "Vilnius", "Tallinn", "Ljubljana", "Belgrade", "Tunis", "Riga", "Minsk",
    "Dacca", "Alger", "Tbilissi", "Reykjavik", "San José", "Quito", "Amman", "Sarajevo", "Montevideo", "Bakou",
    "Beyrouth", "Erevan", "Roseau", "La Valette", "Panama", "Sucre", "La Havane", "Nicosie", "Antananarivo", "Suva",
    "Podgorica", "Malé", "Port-Louis", "Naypyidaw", "Guatemala", "Oulan-Bator", "Caracas", "Tachkent", "Nairobi", "Victoria"
]

var rechercheAeroports: [String] = [
    "CDG", "MAD", "IAD", "PEK", "FCO", "IST", "MEX", "BER", "BKK", "LHR",
    "HND", "VIE", "ATH", "SVO", "KUL", "BUD", "RUH", "AMS", "YOW", "WAW",
    "ICN", "LIS", "DEL", "KBP", "CGK", "HAN", "ARN", "BRU", "CBR", "BSB",
    "HKG", "SIN", "JNB", "CPH", "ZRH", "CMN", "AUH", "EZE", "DUB", "CAI",
    "PRG", "TPE", "SCL", "HEL", "OSL", "MNL", "BOG", "WLG", "TLV", "DOH",
    "NQZ", "MFM", "LIM", "OTP", "ISB", "BAH", "LUX", "BTS", "KWI", "SOF",
    "CMB", "MCT", "ZAG", "VNO", "TLL", "LJU", "BEG", "TUN", "RIX", "MSQ",
    "DAC", "ALG", "TBS", "KEF", "SJO", "UIO", "AMM", "SJJ", "MVD", "GYD",
    "BEY", "EVN", "DOM", "MLA", "PTY", "VVI", "HAV", "LCA", "TNR", "SUV",
    "TGD", "MLE", "MRU", "NYT", "GUA", "ULN", "CCS", "TAS", "NBO", "SEZ"
];


var rechercheDestination = [ recherchePays, rechercheCapitales, rechercheAeroports]
// future @State


// objectif créer une fonction qui filtre les noms de mes destinations
// fonction de filtrage de la destination en Swift

//func filteringDestination({
//    if searchFiled.contains(recherch){
//        
//    }
//}

// faire une struc de localisation avec pays capital en String et aeroport en [String]
// boucler pour savoir si le texte saisi dans ma search bar contient soit le pays, la capital, ou l'aeroport dans son champ


struct Localisation: Identifiable {
    var id = UUID()
    let pays : String
    let capitale : String
    var aeroport : [String]
    
    
    
}
var localisations: [Localisation] = [
    Localisation(pays: "France", capitale: "Paris", aeroport: ["CDG"]),
    Localisation(pays: "Espagne", capitale: "Madrid", aeroport: ["MAD"]),
    Localisation(pays: "États-Unis", capitale: "Washington, D.C.", aeroport: ["IAD"]),
    Localisation(pays: "Chine", capitale: "Pékin", aeroport: ["PEK"]),
    Localisation(pays: "Italie", capitale: "Rome", aeroport: ["FCO"]),
    Localisation(pays: "Turquie", capitale: "Ankara", aeroport: ["IST"]),
    Localisation(pays: "Mexique", capitale: "Mexico", aeroport: ["MEX"]),
    Localisation(pays: "Allemagne", capitale: "Berlin", aeroport: ["BER"]),
    Localisation(pays: "Thaïlande", capitale: "Bangkok", aeroport: ["BKK"]),
    Localisation(pays: "Royaume-Uni", capitale: "Londres", aeroport: ["LHR"]),
    Localisation(pays: "Japon", capitale: "Tokyo", aeroport: ["HND"]),
    Localisation(pays: "Autriche", capitale: "Vienne", aeroport: ["VIE"]),
    Localisation(pays: "Grèce", capitale: "Athènes", aeroport: ["ATH"]),
    Localisation(pays: "Russie", capitale: "Moscou", aeroport: ["SVO"]),
    Localisation(pays: "Malaisie", capitale: "Kuala Lumpur", aeroport: ["KUL"]),
    Localisation(pays: "Hongrie", capitale: "Budapest", aeroport: ["BUD"]),
    Localisation(pays: "Arabie Saoudite", capitale: "Riyad", aeroport: ["RUH"]),
    Localisation(pays: "Pays-Bas", capitale: "Amsterdam", aeroport: ["AMS"]),
    Localisation(pays: "Canada", capitale: "Ottawa", aeroport: ["YOW"]),
    Localisation(pays: "Pologne", capitale: "Varsovie", aeroport: ["WAW"]),
    Localisation(pays: "Corée du Sud", capitale: "Séoul", aeroport: ["ICN"]),
    Localisation(pays: "Portugal", capitale: "Lisbonne", aeroport: ["LIS"]),
    Localisation(pays: "Inde", capitale: "New Delhi", aeroport: ["DEL"]),
    Localisation(pays: "Ukraine", capitale: "Kiev", aeroport: ["KBP"]),
    Localisation(pays: "Indonésie", capitale: "Jakarta", aeroport: ["CGK"]),
    Localisation(pays: "Viêt Nam", capitale: "Hanoï", aeroport: ["HAN"]),
    Localisation(pays: "Suède", capitale: "Stockholm", aeroport: ["ARN"]),
    Localisation(pays: "Belgique", capitale: "Bruxelles", aeroport: ["BRU"]),
    Localisation(pays: "Australie", capitale: "Canberra", aeroport: ["CBR"]),
    Localisation(pays: "Brésil", capitale: "Brasilia", aeroport: ["BSB"]),
    Localisation(pays: "Hong Kong", capitale: "Hong Kong", aeroport: ["HKG"]),
    Localisation(pays: "Singapour", capitale: "Singapour", aeroport: ["SIN"]),
    Localisation(pays: "Afrique du Sud", capitale: "Pretoria", aeroport: ["JNB"]),
    Localisation(pays: "Danemark", capitale: "Copenhague", aeroport: ["CPH"]),
    Localisation(pays: "Suisse", capitale: "Berne", aeroport: ["ZRH"]),
    Localisation(pays: "Maroc", capitale: "Rabat", aeroport: ["CMN"]),
    Localisation(pays: "Émirats arabes unis", capitale: "Abu Dhabi", aeroport: ["AUH"]),
    Localisation(pays: "Argentine", capitale: "Buenos Aires", aeroport: ["EZE"]),
    Localisation(pays: "Irlande", capitale: "Dublin", aeroport: ["DUB"]),
    Localisation(pays: "Égypte", capitale: "Le Caire", aeroport: ["CAI"]),
    Localisation(pays: "République tchèque", capitale: "Prague", aeroport: ["PRG"]),
    Localisation(pays: "Taïwan", capitale: "Taipei", aeroport: ["TPE"]),
    Localisation(pays: "Chili", capitale: "Santiago", aeroport: ["SCL"]),
    Localisation(pays: "Finlande", capitale: "Helsinki", aeroport: ["HEL"]),
    Localisation(pays: "Norvège", capitale: "Oslo", aeroport: ["OSL"]),
    Localisation(pays: "Philippines", capitale: "Manille", aeroport: ["MNL"]),
    Localisation(pays: "Colombie", capitale: "Bogota", aeroport: ["BOG"]),
    Localisation(pays: "Nouvelle-Zélande", capitale: "Wellington", aeroport: ["WLG"]),
    Localisation(pays: "Israël", capitale: "Jérusalem", aeroport: ["TLV"]),
    Localisation(pays: "Qatar", capitale: "Doha", aeroport: ["DOH"])
]


//for _ in searchFiled.caseInsensitiveCompare("pa"){
//    recherchePays.contains($0) || rechercheCapitales.contains($0) || rechercheAeroports.contains($0)
//}

// ce que je veux que ça fasse:
// Je veux que pour chaque caractère tapé la search bar me propose les Localisation qui contienne ces caractère sans distinction de case

//if searchFiled.filter(localisations: Localisation -> Bool = true) {
//    ForEach(localisations, id: \.self){
//        Text($0)
//    }
//}


