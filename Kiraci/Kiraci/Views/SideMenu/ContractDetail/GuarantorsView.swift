//
//  GuarantorsView.swift
//  Kiraci
//
//  Created by BusranurOK on 1.08.2022.
//

import SwiftUI

struct GuarantorsView: View {
    
    var body: some View {
        
        VStack {
            
            VStack(alignment: .leading, spacing: 15) {
                
                FormDetailCell(label: "İsim Soyisim", content: "Büşra Nur OK", isDivider: true)
                
                FormDetailCell(label: "Kimlik No", content: "11111111111", isDivider: true)
                
                FormDetailCell(label: "Telefon", content: "(+090)5552001029", isDivider: false)
                
                FormDetailCell(label: "Email", content: "busranurok@gmail.com", isDivider: true)
                
                FormDetailCell(label: "Adres", content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.", isDivider: true)
                
                FormDetailCell(label: "Açıklama", content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.", isDivider: false)
                
            }
            .padding()
            
            Spacer(minLength: 0)
            
        }
        
    }
}
