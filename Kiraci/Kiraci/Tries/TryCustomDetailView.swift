//
//  CustomDetailView.swift
//  Kiraci
//
//  Created by BusranurOK on 28.07.2022.
//

import SwiftUI

struct TryCustomDetailView: View {
    
    @Binding var show: Bool

    var body: some View {
        
        VStack {
            
            Image(systemName: "doc.text")
                .resizable()
                .frame(width: 50, height: 50)
                .padding(.top, 10)
            
            Spacer()
            
            Text("Sözleşmenin Detayı")
            
            Spacer()
            
            Divider()
            
            HStack {
                
                Button("Ok") {
                    
                    show.toggle()
                    
                }.frame(width: UIScreen.main.bounds.width / 2, height: 40)
                    .foregroundColor(.white)
                
            }
            
        }
        .frame(width: UIScreen.main.bounds.width / 2, height: 200)
        .background(Color.black.opacity(0.5))
        .cornerRadius(12)
        .clipped()
        
    }
}
