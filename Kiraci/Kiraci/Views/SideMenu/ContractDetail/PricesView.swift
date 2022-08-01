//
//  Prices.swift
//  Kiraci
//
//  Created by BusranurOK on 1.08.2022.
//

import SwiftUI

struct PricesView: View {
    
    var body: some View {
        
        VStack {
            
            VStack(alignment: .leading, spacing: 15) {
                
                FormDetailCell(label: "Kira", content: "150,0 TL", isDivider: true)
                
                FormDetailCell(label: "Aidat", content: "150,0 TL", isDivider: false)
                
            }
            .padding()
            
            Spacer(minLength: 0)
            
        }
        
    }
}
