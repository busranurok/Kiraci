//
//  CustomLoadingAnimationView.swift
//  Kiraci
//
//  Created by BusranurOK on 29.07.2022.
//

import SwiftUI

struct DribbleAnimatedView: View {

    @State var animateLogo = false
    @Binding var showLoadingScreen: Bool
    
    var body: some View {
        
        ZStack {
            
            Color.white
                .frame(width: 150, height: 150)
                .cornerRadius(14)
            // Shadows...
                .shadow(color: Color.primary.opacity(0.07), radius: 5, x: 5, y: 5)
                .shadow(color: Color.primary.opacity(0.07), radius: 5, x: -5, y: -5)
            
            // Logo Shadow...
            Circle()
                .fill(Color.gray.opacity(0.4))
                .frame(width: 40, height: 40)
            // Rotating in X Axis...
                .rotation3DEffect(
                    .init(degrees: 60),
                    axis: (x: 1, y: 0, z: 0.0),
                    anchor: .center,
                    anchorZ: 0.0,
                    perspective: 1.0
                    
                )
                .offset(y: 35)
                .opacity(animateLogo ? 1 : 0)
            
            Image("renterlogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
                .offset(y: animateLogo ? 10 : -25 )
            
        }
        .onAppear {
            
            doAnimation()
            
        }
    }
    
    func doAnimation() {
        
        withAnimation(Animation.easeInOut(duration: 0.4).repeatForever(autoreverses: true)){
            
            animateLogo.toggle()
            
        }
    }
    
}
