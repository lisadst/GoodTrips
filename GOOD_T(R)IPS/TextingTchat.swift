//
//  TextingTchat.swift
//  ProjetGoodTrips
//
//  Created by apprenant79 on 03/02/2025.
//

import SwiftUI



struct TextingTchat: View {
    var sondage: SurveyMessage
    var grouptitle: itemMessagerie

    @State private var messages: [Message] = []
    @State private var inputText: String = ""

    var body: some View {
        VStack {
            Text(grouptitle.groupTitle)
                .font(.title3)
                .fontWeight(.semibold)

                Accordeon()
                    //.background(.eggshell)
                   // .border(Color.black)
                    .foregroundColor(.black)
            

            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(messages) { message in
                        HStack(alignment: .bottom) {
                            if message.isUser { Spacer() }

                            VStack(alignment: .leading, spacing: 3) {
                                Text(message.text)
                                    .padding()
                                    .background(message.isUser ? .saffron : .eggshell)
                                    .foregroundColor(message.isUser ? .black : .black)
                                    .cornerRadius(12)

                                Text(formatDate(message.timestamp)) // Displaying timestamp
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }

                            Image("PP1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())

                            if !message.isUser { Spacer() }
                        }
                    }
                }
                .padding()
            }

            HStack {
                TextField("Type a message...", text: $inputText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)

                Button(action: sendMessage) {
                    Image(systemName: "paperplane.fill")
                        .padding()
                        .background(.saffron)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
            }
            .padding()
        }
    }

    func sendMessage() {
        guard !inputText.isEmpty else { return }
        
        let newMessage = Message(text: inputText, isUser: true, timestamp: Date())
        messages.append(newMessage)
        inputText = ""

       
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            let botMessage = Message(text: "Echo: \(newMessage.text)", isUser: false, timestamp: Date())
            messages.append(botMessage)
        }
    }

    func formatDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter.string(from: date)
    }
}

#Preview {
    TextingTchat(sondage: survey[0], grouptitle: itemsMessagerie[0])
}
