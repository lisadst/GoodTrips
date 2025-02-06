//
//  Animation_plane.swift
//  ProjetGoodTrips
//
//  Created by apprenant79 on 05/02/2025.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var planeOffsetX: CGFloat = -UIScreen.main.bounds.width / 1
    @State private var planeOffsetY: CGFloat = UIScreen.main.bounds.height
    @State private var showMainScreen = false
    @State private var mainScreenOpacity = 0.0
    @State private var mainScreenScale = 0.8
    
    
    var body: some View {
        if showMainScreen {
            TabBar(emailField: .constant(""), numberOfGuest: .constant(1))
                .opacity(mainScreenOpacity)
                .scaleEffect(mainScreenScale)
                .onAppear {
                    withAnimation(.easeInOut(duration: 0.7)) {
                        mainScreenOpacity = 1.0
                        mainScreenScale = 1.0// Transition to main screen
                    }
                }
        } else {
            ZStack {
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width:300)
                Image(systemName: "paperplane.fill") // Paper plane symbol
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 350)
                    .foregroundColor(.darkgreen)
                    .offset(x: planeOffsetX, y: planeOffsetY) // Start position
                    .rotationEffect(.degrees(0)) // Slight upward tilt
                    .onAppear {
                        withAnimation(.easeInOut(duration: 2.5)) {
                            planeOffsetX = UIScreen.main.bounds.width / 0.6  // Move to the right
                            planeOffsetY = -UIScreen.main.bounds.height  // Move upwards
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.55) {
                            showMainScreen = true
                        }
                    }
            }
        }
    }
    
}

  



#Preview {
    SplashScreenView()
}
