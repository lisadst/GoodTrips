//
//  Accordeon.swift
//  ProjetGoodTrips
//
//  Created by apprenant79 on 04/02/2025.
//

import SwiftUI

struct Accordeon: View {
    
    var body: some View {
        AccordionView(sondage: survey[0])
    }
}

struct AccordionView: View {
    var sondage: SurveyMessage
    @State var surveyCheck: Bool = false
    @State var surveyCheck2: Bool = false
    @State var surveyCheck3: Bool = false
    @State var isAccordionExpanded: Bool = false
    
    var body: some View {
        
        
        VStack {
            /*Toggle("Expand Accordion", isOn: $isAccordionExpanded.animation()) // THIS FIX the Disclosure Animation
             .padding(.horizontal)*/
            ZStack{
                LinearGradient(colors: [.saffron, .eggshell], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .frame(width:400, height:65)
                DisclosureGroup(sondage.question, isExpanded: $isAccordionExpanded) {
                    ZStack{
                        LinearGradient(colors: [.saffron, .eggshell], startPoint: .topLeading, endPoint: .bottomTrailing)
                            .frame(width:400, height:200)
                        VStack {
                            HStack{
                                
                                Text(sondage.options1)
                                    .font(.title3)
                                Spacer()
                                Button{
                                    surveyCheck.toggle()
                                } label : {
                                    Image(systemName: surveyCheck ? "checkmark.circle.fill" : "checkmark.circle")
                                        .font(.system(size:30))
                                        .foregroundColor(.darkgreen)
                                }
                            }
                            HStack{
                                
                                Text(sondage.options2)
                                    .font(.title3)
                                Spacer()
                                Button{
                                    surveyCheck2.toggle()
                                } label : {
                                    Image(systemName: surveyCheck2 ? "checkmark.circle.fill" : "checkmark.circle")
                                        .font(.system(size:30))
                                        .foregroundColor(.darkgreen)
                                }
                            }
                            HStack{
                                
                                Text(sondage.options3)
                                    .font(.title3)
                                Spacer()
                                Button{
                                    surveyCheck3.toggle()
                                } label : {
                                    Image(systemName: surveyCheck3 ? "checkmark.circle.fill" : "checkmark.circle")
                                        .font(.system(size:30))
                                        .foregroundColor(.darkgreen)
                                }
                                
                            }
                            Button(action:{}, label: {
                                Text("Valider")
                                    .fontWeight(.semibold)
                                    .padding(10)
                                    .background(.darkgreen)
                                    .foregroundColor(.white)
                                    .cornerRadius(90)
                                    .onTapGesture { isAccordionExpanded.toggle()}
                            })
                            
                            
                        }
                        .padding()
                        
                    }
                }
                
                .font(.system(size:20))
                .padding()
            }
        }
        
    }
}


#Preview {
    Accordeon()
}
