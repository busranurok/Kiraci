//
//  MyRentedBuildings.swift
//  Kiraci
//
//  Created by BusranurOK on 24.07.2022.
//

import SwiftUI

struct MyRentedBuildingsView: View {
    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: -20) {
                
                NavigationLink(destination: BuildingDetail()) {
                    
                    GroupBox {
                        
                        HStack(spacing: 20) {
                            
                            Image("home")
                                .imageScale(.large)
                            
                            VStack(alignment: .leading, spacing: 10) {
                                
                                Text("Mülk")
                                    .font(.title3)
                                
                                Text("Pendik Evim")
                                    .font(.body).bold()
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Spacer()
                            
                            VStack(spacing: 3) {
                                
                                Text("Durum")
                                    .foregroundColor(.gray)
                                
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .fill(.green)
                                    .overlay(Text("Boş"), alignment: .center)
                                    .foregroundColor(.white)
                                    .frame(width: 70, height: 30)
                                
                                
                            }
                            
                        }
                        
                    }
                    .groupBoxStyle(ColoredGroupBox(customBackgroundColor: Color.cardViewBackground))
                    .padding()
                    
                }
                
                
                NavigationLink(destination: BuildingDetail()) {
                    
                    GroupBox {
                        
                        HStack(spacing: 20) {
                            
                            Image("home")
                                .imageScale(.large)
                            
                            VStack(alignment: .leading, spacing: 10) {
                                
                                Text("Mülk")
                                    .font(.title3)
                                
                                Text("Bursa Evim")
                                    .font(.body).bold()
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Spacer()
                            
                            VStack(spacing: 3) {
                                
                                Text("Durum")
                                    .foregroundColor(.gray)
                                
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .fill(.red)
                                    .overlay(Text("Dolu"), alignment: .center)
                                    .foregroundColor(.white)
                                    .frame(width: 70, height: 30)
                                
                            }
                            
                        }
                        
                    }
                    .groupBoxStyle(ColoredGroupBox(customBackgroundColor: Color.cardViewBackground))
                    .padding()
                    
                }
                
                Spacer()
                
            }
            .navigationBarHidden(true)
            .navigationTitle("")
            
        }
        
    }
}
