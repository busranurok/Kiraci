//
//  LessorOfficerView.swift
//  Kiraci
//
//  Created by BusranurOK on 1.08.2022.
//

import SwiftUI

struct LessorOfficerView: View {
    
    var body: some View {
        
        VStack {
            
            VStack(alignment: .leading, spacing: 15) {
                
                VStack(alignment: .leading, spacing: 3) {
                    
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(.green)
                        .overlay(Text("Mülk Sahibi"), alignment: .center)
                        .foregroundColor(.white)
                        .frame(width: 100, height: 35)
                    
                    Divider()
                        .frame(height: 1)
                        .overlay(.green.opacity(0.2))
                    
                }
                
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
