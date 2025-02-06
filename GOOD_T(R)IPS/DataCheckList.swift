//
//  DataCheckList.swift
//  AFP20251
//
//  Created by apprenant97 on 03/02/2025.
//

import Foundation
struct CheckListExtract :Identifiable{
    var id = UUID()
    var name: String
    var Icone :String
    var photo: String
    
}
var CheckListExtracts: [CheckListExtract]=[CheckListExtract(name: "Voyage Tokyo", Icone: "checklist", photo:"Tokyo"),
                                           CheckListExtract(name: "Voyage Paris", Icone: "checklist", photo:"Paris"),
                                           CheckListExtract(name: "Voyage Londre", Icone: "checklist", photo:"Londre"),
                                           CheckListExtract(name: "Voyage Italie", Icone: "checklist", photo:"Italie"),
                                           CheckListExtract(name: "Voyage Canada", Icone: "checklist.checked", photo:"Canada"),
                                           CheckListExtract(name: "Voyage Egypte", Icone: "checklist.checked", photo:"Egypte"),
                                           CheckListExtract(name: "Voyage Inde", Icone: "checklist.checked", photo:"Inde"),
                                           CheckListExtract(name: "Voyage Turquie", Icone: "checklist.checked", photo:"Turquie")]

/*struct checklistElement: Identifiable {
    let id = UUID()
    let pic: String
    let name: String
}

let elements = [checklistElement(pic: "trash.fill", name: "Lundi")]*/

