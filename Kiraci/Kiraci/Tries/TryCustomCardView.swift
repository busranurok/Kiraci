//
//  CustomCardView.swift
//  Kiraci
//
//  Created by BusranurOK on 28.07.2022.
//

import SwiftUI

struct TryCustomCardView: View {
    
    let data: [Int] = Array(1...2)
    let cardViewBackgroundColors: [Color] = [Color.yellow, Color.renterText]
    
    @State var showContractDetailView = false
    
    var body: some View {
        
        ForEach(data, id: \.self) { number in
            
            ZStack {
                
                Rectangle()
                    .frame(width: 150, height: 150)
                    .foregroundColor(cardViewBackgroundColors[number%2])
                    .cornerRadius(30)
                
                Text("Sözleşme \(number)")
                    .foregroundColor(Color.white)
                    .font(.system(size: 20, weight: .medium, design: .rounded))
                
            }
            
        }
        
    }

}


