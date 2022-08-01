//
//  RenterView.swift
//  Kiraci
//
//  Created by BusranurOK on 1.08.2022.
//

import SwiftUI

struct RenterView: View {
    
    var body: some View {
        
        VStack {
            
            VStack(alignment: .leading, spacing: 15) {
                
                FormDetailCell(label: "Tip", content: "Gerçek Kişi", isDivider: true)
                
                FormDetailCell(label: "İsim Soyisim", content: "Büşra Nur OK", isDivider: true)
                
                FormDetailCell(label: "Kimlik No", content: "11111111111", isDivider: true)
                
                FormDetailCell(label: "Email", content: "busranurok@gmail.com", isDivider: true)
                
                FormDetailCell(label: "Telefon", content: "(+090)5552001029", isDivider: false)
                
            }
            .padding()
            
            Spacer(minLength: 0)
            
        }
        
    }
}
