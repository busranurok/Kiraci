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
                        .navigationTitle("Change Password")
                    
                } label: {
                    
                    Text("Change Password")
                    
                }
                .navigationTitle("Settings")
                
                NavigationLink {
                    
                    ChangeLanguageView()
                        .navigationTitle("Change Language")
                    
                } label: {
                    
                    Text("Change Language")
                    
                }
                .navigationTitle("Settings")
                
            }
            .listStyle(.sidebar)
            
        }
    }
}
