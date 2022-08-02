//
//  CustomPopUpView.swift
//  Kiraci
//
//  Created by BusranurOK on 2.08.2022.
//

import SwiftUI

struct CustomPopUpView: View {
    
    @Binding var showCustomAlert: Bool
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
            
            VStack(spacing: 25) {
                
                Image(systemName: "info.circle")
                
                Text("Başarılı bir şekilde kaydedilmiştir.")
                    .font(.title)
                    .foregroundColor(.renterText)
                
            }
            .padding(.vertical, 25)
            .padding(.horizontal, 30)
            .background(BlurView())
            .cornerRadius(25)
            
            Button {
                
                showCustomAlert.toggle()
                
            } label: {
                
                Image(systemName: "xmark.circle")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.red)
                
            }
            .padding()

            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.primary.opacity(0.35))
        
    }
}

struct BlurView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemThinMaterial))
        
        return view
        
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
        
        
    }
}
