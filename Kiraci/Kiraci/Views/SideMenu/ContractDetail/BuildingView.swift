//
//  BuildingView.swift
//  Kiraci
//
//  Created by BusranurOK on 1.08.2022.
//

import SwiftUI

struct BuildingView: View {
    
    var body: some View {
        
        VStack {
            
            VStack(alignment: .leading, spacing: 15) {
                
                FormDetailCell(label: "Mülk İsmi", content: "Pendik Evim", isDivider: true)
                
                FormDetailCell(label: "Mülk Sahibi", content: "Büşra Nur OK", isDivider: true)
                
                FormDetailCell(label: "Adres", content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500.", isDivider: false)
                
            }
            .padding()
            
            Spacer(minLength: 0)
            
        }
        
    }
}

