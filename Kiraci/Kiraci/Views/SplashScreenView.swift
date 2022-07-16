//
//  SplashScreenView.swift
//  Kiraci
//
//  Created by BusranurOK on 16.07.2022.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        
        if isActive {
            
            /*VStack {
                
                if UIScreen.main.bounds.height < 750 {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        SignInView()
                        
                    }
                    
                } else {
                    
                    SignInView()
                    
                }
                
            }
            .padding(.vertical)*/
            
            SignInView()
            
        } else {
            
            VStack {
                
                Spacer(minLength: 400)
                
                VStack(spacing: 10) {
                    
                    Image("renterlogo")
                        .font(.system(size: 90))
                    
                    Text("Kiracı")
                        .font(.system(size: 40))
                        .fontWeight(.medium)
                        .foregroundColor(Color("RenterText").opacity(0.80))
                    
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    
                    withAnimation(.easeIn(duration: 1.2)) {
                        
                        self.size = 0.9
                        self.opacity = 1.0
                        
                    }
                    
                }
                
                Spacer(minLength: 200)
                
                    Image("renterbottom")

            }
            .ignoresSafeArea(.all, edges: .all)
            .onAppear {
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    
                    withAnimation {
                        
                        self.isActive = true
                        
                    }
                    
                }
                
            }
            
        }
        
    }
}
