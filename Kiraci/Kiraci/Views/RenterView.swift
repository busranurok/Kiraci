//
//  RenterView.swift
//  Kiraci
//
//  Created by BusranurOK on 17.07.2022.
//

import SwiftUI

struct RenterView: View {
    
    @Binding var headerName: String
    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: -20) {
                    
                    GroupBox {
                        
                        HStack {
                            
                            VStack(alignment: .leading, spacing: 5) {
                                
                                Text("Kiralık Binalar")
                                    .font(.title3)
                                Text("12")
                                    .font(.title2)
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Image("home")
                                .imageScale(.large)
                            
                        }
                        
                    }
                    .groupBoxStyle(ColoredGroupBox())
                    .padding()
                    
                    
                    GroupBox {
                        
                        HStack {
                            
                            VStack(alignment: .leading, spacing: 5) {
                                
                                Text("Gecikmiş Ödemeler")
                                    .font(.title3)
                                Text("TL 1.168,253")
                                    .font(.title2)
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Image("money")
                                .imageScale(.large)
                            
                        }
                        
                    }
                    .groupBoxStyle(ColoredGroupBox())
                    .padding()
                    
                    Spacer()
                    
                }
                .onAppear {
                    
                    headerName = "Renter"
                    
                }
                .navigationBarHidden(true)
            
        }
        .padding(.top, -80)
        
    }
}
