//
//  HomeView.swift
//  Kiraci
//
//  Created by BusranurOK on 17.07.2022.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        NavigationView {
            
            VStack(spacing: 25) {
                
                
                
            }
        }
        .font(.title)
        .padding(.top, 25)
        .navigationTitle("Ana sayfa")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            
            ToolbarItem(placement: .navigationBarLeading) {
                
                Button(action: {}) {
                    Image(systemName: "line.3.horizontal")
                        .padding(.horizontal)
                    
                }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                
                Button(action: {}) {
                    Image(systemName: "bell")
                        .padding(.horizontal)
                    
                }
                
            }
        }
        .tint(Color("RenterText"))
        .navigationBarBackButtonHidden(true)
        
    }
}
