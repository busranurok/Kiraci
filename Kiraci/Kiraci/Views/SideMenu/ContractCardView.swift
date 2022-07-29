//
//  ContractCardView.swift
//  Kiraci
//
//  Created by BusranurOK on 29.07.2022.
//

import SwiftUI

struct ContractCardView: View {
    
    @State private var showContractDetailView = false
    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: -20) {
                
                NavigationLink(destination: ContractDetailView(), isActive: $showContractDetailView) {
                    
                    Button(action: {
                        
                        showContractDetailView.toggle()
                        
                    }) {
                        
                        GroupBox {
                            
                            VStack(spacing: 20) {
                                
                                VStack(alignment: .leading, spacing: 10) {
                                    
                                    Text("Sözleşme No: 123456")
                                        .font(.subheadline)
                                    
                                    Text("Pendik Evim")
                                        .multilineTextAlignment(.leading)
                                        .lineLimit(3)
                                        .font(.subheadline)
                                    
                                    HStack {
                                        
                                        Label {
                                            
                                            Text("28.09.1993")
                                                .font(.subheadline)
                                            
                                        } icon : {
                                            
                                            Image(systemName: "calendar")
                                            
                                        }
                                        .font(.system(size: 15, weight: .bold))
                                        .foregroundColor(.black.opacity(0.5))
                                        
                                        Spacer()
                                        
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .fill(.green)
                                            .overlay(Text("Hazırlanıyor").font(.subheadline).bold(), alignment: .center)
                                            .foregroundColor(.white)
                                            .frame(width: 100, height: 30)
                                        
                                    }
                                    
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .foregroundColor(Color.black)
                                
                            }
                            
                        }
                        .groupBoxStyle(ColoredGroupBox(customBackgroundColor: Color.gray.opacity(0.1)))
                        .padding()
                        
                    }
                }
                
                NavigationLink(destination: ContractDetailView(), isActive: $showContractDetailView) {
                    
                    Button(action: {
                        
                        showContractDetailView.toggle()
                        
                    }) {
                        
                        GroupBox {
                            
                            VStack(spacing: 20) {
                                
                                VStack(alignment: .leading, spacing: 10) {
                                    
                                    Text("Sözleşme No: 123456")
                                        .font(.subheadline)
                                    
                                    Text("Pendik Evim")
                                        .multilineTextAlignment(.leading)
                                        .lineLimit(3)
                                        .font(.subheadline)
                                    
                                    HStack {
                                        
                                        Label {
                                            
                                            Text("28.09.1993")
                                                .font(.subheadline)
                                            
                                        } icon : {
                                            
                                            Image(systemName: "calendar")
                                            
                                        }
                                        .font(.system(size: 15, weight: .bold))
                                        .foregroundColor(.black.opacity(0.5))
                                        
                                        Spacer()
                                        
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .fill(.red)
                                            .overlay(Text("Onaylandı").font(.subheadline).bold(), alignment: .center)
                                            .foregroundColor(.white)
                                            .frame(width: 100, height: 30)
                                        
                                    }
                                    
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .foregroundColor(Color.black)
                                
                            }
                            
                        }
                        .groupBoxStyle(ColoredGroupBox(customBackgroundColor: Color.gray.opacity(0.1)))
                        .padding()
                        
                    }
                }
                
                Spacer()
                
            }
            .padding()
        }
    }
}
