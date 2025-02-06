//
//  ItemCheckList.swift
//  AFP20251
//
//  Created by apprenant97 on 03/02/2025.
//

import SwiftUI

struct ItemCheckList: View {
    var Check: CheckListExtract
    var body: some View {
        NavigationStack{
            NavigationLink(destination: CheckList1(),
                           label: {
                ZStack{
                    Image(Check.photo)
                        .resizable()
                        .frame(width:200, height:200)
                        .scaledToFill()
                        .opacity(0.3)
                        .cornerRadius(20)
                    
                    VStack{
                        Text(Check.name)
                            .foregroundColor(.darkgreen)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding()
                        Image(systemName: Check.Icone)
                            .foregroundColor(.darkgreen)
                            .font(.system(size:70))
                    }
                    .foregroundColor(.black)
                    
                }
            })
            
        }
    }
}
#Preview {
    ItemCheckList(Check:CheckListExtracts[0])
}
