//
//  SettingsView.swift
//  Kiraci
//
//  Created by BusranurOK on 23.07.2022.
//

import SwiftUI

struct SettingsView: View {
    
    var body: some View {
        
        VStack {

            List {
                
                NavigationLink {
                    
                    ChangePasswordView()
                    
                } label: {
                    
                    Text("Şifre Değişikliği")
                    
                }
                
                NavigationLink {
                    
                    ChangeLanguageView()
                    
                } label: {
                    
                    Text("Dil Değişikliği")
                    
                }
               
                
            }
            .listStyle(.sidebar)
            
        }
        .navigationTitle("")
    }
}
