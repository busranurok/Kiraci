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
                    
                    Text("Change Password")
                    
                }
                
                NavigationLink {
                    
                    ChangeLanguageView()
                    
                } label: {
                    
                    Text("Change Language")
                    
                }
               
                
            }
            .listStyle(.sidebar)
            
        }
        .navigationTitle("")
    }
}
