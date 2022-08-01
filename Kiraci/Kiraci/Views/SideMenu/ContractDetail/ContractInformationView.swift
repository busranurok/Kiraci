//
//  ContractInformationView.swift
//  Kiraci
//
//  Created by BusranurOK on 1.08.2022.
//

import SwiftUI

struct ContractInformationView: View {
    
    var body: some View {
        
        VStack {
            
            VStack(alignment: .leading, spacing: 15) {
                
                FormDetailCell(label: "Sözleşme Tipi", content: "İki Taraflı", isDivider: true)
                
                FormDetailCell(label: "Sözleşme No", content: "10' dan fazla", isDivider: true)
                
                FormDetailCell(label: "Açıklama", content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.", isDivider: true)
                
                FormDetailCell(label: "Yürürlük Tarihi", content: "25 Ekim 2021", isDivider: true)
                
                FormDetailCell(label: "Kiralama Tarihleri", content: "25 Ekim 2021 - 24 Ekim 2022 (365 Gün)", isDivider: true)
                
                FormDetailCell(label: "Devir Tarihi", content: "01 Ocak 0001", isDivider: true)
                
                FormDetailCell(label: "Ödeme Günü", content: "1. Gün (Her Ay)", isDivider: true)
                
                FormDetailCell(label: "Ödeme Hesabı", content: "Nakit: açıklama", isDivider: false)
                
            }
            .padding()
            
            Spacer(minLength: 0)
            
        }
        
    }
}
