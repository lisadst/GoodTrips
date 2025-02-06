//
//  CheckList.swift
//  AFP20251
//
//  Created by apprenant97 on 28/01/2025.
//

import SwiftUI

struct CheckList: View {
   
    @State var input: String = ""
    var body: some View {
        
        NavigationStack{
            ScrollView{
                VStack (spacing: 30){
                    
                    //Voyage en cours...
                    LabelledDivider(label: "En cours")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                    ScrollView(.horizontal){
                        HStack(spacing:30){
                            ItemCheckList(Check:CheckListExtracts[0])
                            ItemCheckList(Check:CheckListExtracts[1])
                            ItemCheckList(Check:CheckListExtracts[2])
                            ItemCheckList(Check:CheckListExtracts[3])
                        }
                    }
                    //Historiques
                    
                    LabelledDivider(label: "Passées")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                    ScrollView(.horizontal){
                        HStack(spacing:30){
                            ItemCheckList(Check:CheckListExtracts[4])
                            ItemCheckList(Check:CheckListExtracts[5])
                            ItemCheckList(Check:CheckListExtracts[6])
                            ItemCheckList(Check:CheckListExtracts[7])
                        }
                    }
                    Spacer()
                }
            }
            .navigationTitle("Checklists")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: PROFIL1(), label: {
                        Image(systemName:"person.crop.circle.fill")
                            .foregroundColor(.black)
                    })
                }
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: Page_notifications(), label: {
                        Image(systemName:"bell")
                            .foregroundColor(.black)
                    })
                }
            }
        }
       
      
    }
       
    }
#Preview {
    CheckList()
}
