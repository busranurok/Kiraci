//
//  MyRentedContractsView.swift
//  Kiraci
//
//  Created by BusranurOK on 24.07.2022.
//

import SwiftUI

struct MyRentedContractsView: View {
    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: -20) {
                
                NavigationLink(destination: ContractDetailView()) {
                    
                    GroupBox {
                        
                        HStack(spacing: 20) {
                            
                            Image(systemName: "doc.text")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 30, height: 30)
                            
                            VStack(alignment: .leading, spacing: 10) {
                                
                                Text("Sözleşme")
                                    .font(.title3)
                                
                                Text("Pendik Evim")
                                    .font(.title2)
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Spacer()
                            
                            VStack(spacing: 3) {
                                
                                Text("Durum")
                                    .foregroundColor(.gray)
                                
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .fill(.green)
                                    .overlay(Text("Hazırlanıyor"), alignment: .center)
                                    .foregroundColor(.white)
                                    .frame(width: 100, height: 35)
                                
                            }
                            
                        }
                        
                    }
                    .groupBoxStyle(ColoredGroupBox(customBackgroundColor: Color.cardViewBackground))
                    .padding()
                    
                }
                
                
                NavigationLink(destination: ContractDetailView()) {
                    
                    GroupBox {
                        
                        HStack(spacing: 20) {
                            
                            Image(systemName: "doc.text")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 30, height: 30)
                            
                            VStack(alignment: .leading, spacing: 10) {
                                
                                Text("Sözleşme")
                                    .font(.title3)
                                
                                Text("Bursa Evim")
                                    .font(.title2)
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Spacer()
                            
                            VStack(spacing: 3) {
                                
                                Text("Durum")
                                    .foregroundColor(.gray)
                                
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .fill(.red)
                                    .overlay(Text("Onaylandı"), alignment: .center)
                                    .foregroundColor(.white)
                                    .frame(width: 100, height: 35)
                                
                                
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
