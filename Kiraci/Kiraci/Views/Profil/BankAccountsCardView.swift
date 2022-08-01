//
//  BankAccountCartView.swift
//  Kiraci
//
//  Created by BusranurOK on 1.08.2022.
//

import SwiftUI

struct BankAccountsCardView: View {
    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: -20) {
                
                GroupBox {
                    
                    VStack(spacing: 20) {
                        
                        VStack(alignment: .leading, spacing: 10) {
                            
                            Label {
                                
                                Text("Banka")
                                    .font(.subheadline)
                                    .bold()
                                
                            } icon : {
                                
                                Image(systemName: "building.columns")
                                    .foregroundColor(.green.opacity(0.8))
                                
                            }
                            .font(.system(size: 15, weight: .bold))
                            .foregroundColor(.black.opacity(0.8))
                            
                            Text("Kuveyt Türk")
                                .lineLimit(5)
                                .foregroundColor(.black.opacity(0.6))
                            
                        }
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color.black)
                    
                }
                .groupBoxStyle(ColoredGroupBox(customBackgroundColor: Color.gray.opacity(0.1)))
                .padding()
                
                GroupBox {
                    
                    VStack(spacing: 20) {
                        
                        VStack(alignment: .leading, spacing: 10) {
                            
                            Label {
                                
                                Text("IBAN")
                                    .font(.subheadline)
                                    .bold()
                                
                            } icon : {
                                
                                Image(systemName: "building.columns")
                                    .foregroundColor(.green.opacity(0.8))
                                
                            }
                            .font(.system(size: 15, weight: .bold))
                            .foregroundColor(.black.opacity(0.8))
                            
                            Text("TR78 9999 0000 8888 5555 3333 11")
                                .lineLimit(5)
                                .foregroundColor(.black.opacity(0.6))
                            
                        }
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color.black)
                    
                }
                .groupBoxStyle(ColoredGroupBox(customBackgroundColor: Color.gray.opacity(0.1)))
                .padding()
                
                GroupBox {
                    
                    VStack(spacing: 20) {
                        
                        VStack(alignment: .leading, spacing: 10) {
                            
                            Label {
                                
                                Text("Eposta")
                                    .font(.subheadline)
                                    .bold()
                                
                            } icon : {
                                
                                Image(systemName: "envelope")
                                    .foregroundColor(.green.opacity(0.8))
                                
                            }
                            .font(.system(size: 15, weight: .bold))
                            .foregroundColor(.black.opacity(0.8))
                            
                            Text("busranur@hotmail.com")
                                .lineLimit(5)
                                .foregroundColor(.black.opacity(0.6))
                            
                        }
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color.black)
                    
                }
                .groupBoxStyle(ColoredGroupBox(customBackgroundColor: Color.gray.opacity(0.1)))
                .padding()
                
                Spacer()
                
            }
            .padding()
        }
        
    }
}
