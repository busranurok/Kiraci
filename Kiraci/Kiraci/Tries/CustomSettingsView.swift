//
//  SettingsView.swift
//  Kiraci
//
//  Created by BusranurOK on 21.07.2022.
//

import SwiftUI

struct CustomSettingsView: View {
    
    var body: some View {
        
        NavigationView {
            
            Form {
                
                Section(header: Text("Personel Information")) {
                    
                    NavigationLink {
                        
                        ChangePasswordView()
                        
                    } label: {
                        
                        Text("Change Password")
                        
                    }
                    
                    NavigationLink {
                        
                        ChangePasswordView()
                        
                    } label: {
                        
                        Text("Change Password")
                        
                    }

                    
                }
                
            }
            
        }
        
        Spacer()
        
    }
}
