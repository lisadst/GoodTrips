//
//  question1Screen.swift
//  CarlaKroft
//
//  Created by apprenant75 on 28/01/2025.
//

import SwiftUI

//struct Question1ScreenView : View {
//    @State var index : Int
//    var body: some View {
//        ZStack{
//
//            Color.black.mix(with: .white, by: 0.75)
//                .ignoresSafeArea()
//
//            Text(question1.question)
//                .font(.system(size: 25))
//                .multilineTextAlignment(.center)
//                .fontWeight(.bold)
//                .frame(width: 250)
//                .lineLimit(4)
//
//            QuizButtonExtract(quizButtonText: QuizQuestionnaireData(question: question1.question, answer:answers1 ), quizButtonColor:.white, index: $index)
//
//
//
//        }
//
//
//
//    }
//}











struct questionsScreen: View {
    @State var indexQ: Int = 0
    //    @State var previousAnswerIndex : [Int] = questions[index -= 1].answer
    @State var showSheet:Bool = false
    
    @ObservedObject var combienPériode = trip
    @ObservedObject var quelleSaison = trip
    
    @Binding var emailField: String
//    @Binding var indexQ: Int
    @State var departureDate : Date
    @State var returnDate : Date


    var body: some View {
        NavigationStack{
            ZStack {
                Color.darkgreen
                    .ignoresSafeArea()
                ScrollView{
                    VStack{
                        Spacer(minLength: 90)
                        Text(questions[indexQ].question)
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 35))
                            .multilineTextAlignment(.center)
                            .frame(width:300,height: 200)
                        
                        Spacer(minLength: 50)
                        //Button("Click"){
                        //index += 1
                        
                        ForEach(questions[indexQ].answer, id: \.self){
                            QuizButtonExtract(quizButtonText: $0, quizButtonColor: .white, indexQ: $indexQ
                                              
                                              //prochaine étape: stocker la réponse de cette boucle dans mon index
                            )
                        }
                        Spacer(minLength: 18)
                        
                        if indexQ == 1{
                            NavigationLink {
                                DestinationScreen()
                                // stopper toute tentative de passer à [2]
                            } label: {
                                Text("VALIDER")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 40))
                                    .fontWeight(.bold)
                            }
                            
                            //                            Button {
                            //                                showSheet.toggle()
                            //                            } label: {
                            //                                Text("VALIDER")
                            //                                    .foregroundStyle(.white)
                            //                                    .font(.system(size: 40))
                            //                                    .fontWeight(.bold)
                            //                            }
                            //                            .sheet(isPresented: $showSheet) {
                            //                                modalSeachDestinationNon()
                            //                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    questionsScreen(emailField: .constant(""), departureDate: Date.now, returnDate: Date.now)}
