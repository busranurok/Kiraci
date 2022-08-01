//
//  ContractCardView2.swift
//  Kiraci
//
//  Created by BusranurOK on 1.08.2022.
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
                                    
                                    VStack(alignment: .leading, spacing: 3) {
                                        
                                        Text("Sözleşme No")
                                            .bold()
                                        
                                        Text("123456")
                                            .lineLimit(5)
                                            .foregroundColor(.black.opacity(0.6))
                                        
                                    }
                                    
                                    VStack(alignment: .leading, spacing: 3) {
                                        
                                        Text("Mülk Adı")
                                            .bold()
                                        
                                        Text("Pendik Evim")
                                            .lineLimit(5)
                                            .foregroundColor(.black.opacity(0.6))
                                        
                                    }
                                    
                                    HStack {
                                        
                                        Label {
                                            
                                            Text("01.08.2022")
                                                .font(.subheadline)
                                            
                                        } icon : {
                                            
                                            Image(systemName: "calendar")
                                                .foregroundColor(Color.renterText)
                                            
                                        }
                                        .font(.system(size: 15, weight: .bold))
                                        .foregroundColor(.black.opacity(0.8))
                                        
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
                                    
                                    VStack(alignment: .leading, spacing: 3) {
                                        
                                        Text("Sözleşme No")
                                            .bold()
                                        
                                        Text("123456")
                                            .lineLimit(5)
                                            .foregroundColor(.black.opacity(0.6))
                                        
                                    }
                                    
                                    VStack(alignment: .leading, spacing: 3) {
                                        
                                        Text("Mülk Adı")
                                            .bold()
                                        
                                        Text("Pendik Evim")
                                            .lineLimit(5)
                                            .foregroundColor(.black.opacity(0.6))
                                        
                                    }
                                    
                                    HStack {
                                        
                                        Label {
                                            
                                            Text("01.08.2022")
                                                .font(.subheadline)
                                            
                                        } icon : {
                                            
                                            Image(systemName: "calendar")
                                                .foregroundColor(Color.renterText)
                                            
                                        }
                                        .font(.system(size: 15, weight: .bold))
                                        .foregroundColor(.black.opacity(0.8))
                                        
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
