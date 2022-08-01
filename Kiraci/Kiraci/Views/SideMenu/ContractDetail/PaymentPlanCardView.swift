//
//  PaymentPlanCardView.swift
//  Kiraci
//
//  Created by BusranurOK on 1.08.2022.
//

import SwiftUI

struct PaymentPlanCardView: View {
    
    @State private var showContractDetailView = false
    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: -20) {
                
                GroupBox {
                    
                    VStack(spacing: 20) {
                        
                        VStack(alignment: .leading, spacing: 10) {
                            
                            Label {
                                
                                Text("28.07.2022")
                                    .font(.subheadline)
                                
                                
                            } icon : {
                                
                                Image(systemName: "calendar")
                                    .foregroundColor(Color.renterText)
                                
                            }
                            .font(.system(size: 15, weight: .bold))
                            .foregroundColor(.black.opacity(0.8))
                            
                            VStack(alignment: .leading, spacing: 3) {
                                
                                Text("Açıklama")
                                    .bold()
                                
                                Text("Deposito Tahsilatı")
                                    .lineLimit(5)
                                    .foregroundColor(.black.opacity(0.6))
                                
                            }
                            
                            HStack {
                                
                                Label {
                                    
                                    Text("267.0 TL")
                                        .font(.subheadline)
                                    
                                } icon : {
                                    
                                    Image(systemName: "banknote")
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
                
                GroupBox {
                    
                    VStack(spacing: 20) {
                        
                        VStack(alignment: .leading, spacing: 10) {
                            
                            Label {
                                
                                Text("01.08.2022")
                                    .font(.subheadline)
                                
                                
                            } icon : {
                                
                                Image(systemName: "calendar")
                                    .foregroundColor(Color.renterText)
                                
                            }
                            .font(.system(size: 15, weight: .bold))
                            .foregroundColor(.black.opacity(0.8))
                            
                            VStack(alignment: .leading, spacing: 3) {
                                
                                Text("Açıklama")
                                    .bold()
                                
                                Text("Kira Ödemesi (1.11.2022 - 22.11.2022 arası 22 günlük.)")
                                    .lineLimit(5)
                                    .foregroundColor(.black.opacity(0.6))
                                
                            }
                            
                            HStack {
                                
                                Label {
                                    
                                    Text("733.0 TL")
                                        .font(.subheadline)
                                    
                                } icon : {
                                    
                                    Image(systemName: "banknote")
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
                
                Spacer()
                
            }
            .padding()
        }
        
    }
}
