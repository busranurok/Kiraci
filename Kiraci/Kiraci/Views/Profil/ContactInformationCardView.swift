//
//  ContactInformationCardView.swift
//  Kiraci
//
//  Created by BusranurOK on 1.08.2022.
//

import SwiftUI

struct ContactInformationCardView: View {
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: -20) {
                
                GroupBox {
                    
                    VStack(spacing: 20) {
                        
                        VStack(alignment: .leading, spacing: 10) {
                            
                            Label {
                                
                                Text("Telefon")
                                    .font(.subheadline)
                                    .bold()
                                
                            } icon : {
                                
                                Image(systemName: "phone")
                                    .foregroundColor(Color.renterText)
                                
                            }
                            .font(.system(size: 15, weight: .bold))
                            .foregroundColor(.black.opacity(0.8))
                            
                            Text("(+090)5466788390")
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
                                
                                Text("Sosyal Medya")
                                    .font(.subheadline)
                                    .bold()
                                
                            } icon : {
                                
                                Image(systemName: "tv.and.mediabox")
                                    .foregroundColor(Color.renterText)
                                
                            }
                            .font(.system(size: 15, weight: .bold))
                            .foregroundColor(.black.opacity(0.8))
                            
                            Text("Facebook")
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
                                    .foregroundColor(Color.renterText)
                                
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
