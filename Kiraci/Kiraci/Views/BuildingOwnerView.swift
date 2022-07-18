//
//  BuildingOwnerView.swift
//  Kiraci
//
//  Created by BusranurOK on 17.07.2022.
//

import SwiftUI

struct BuildingOwnerView: View {
    
    @Binding var headerName: String
    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: -20) {
                
                GroupBox {
                    
                    HStack {
                        
                        VStack(alignment: .leading, spacing: 5) {
                            
                            Text("Tarih Aralığı")
                                .font(.title3)
                            Text("12 Mart 2022")
                                .font(.title2)
                                .bold()
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Image("date")
                            .imageScale(.large)
                        
                    }
                    
                }
                .groupBoxStyle(ColoredGroupBox())
                .padding()
                
                GroupBox {
                    
                    HStack {
                        
                        VStack(alignment: .leading, spacing: 5) {
                            
                            Text("Toplam Mülk Adedi")
                                .font(.title3)
                            Text("2.343")
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
                            
                            Text("Aktif Mülk Adedi")
                                .font(.title3)
                            Text("1.263")
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
                            
                            Text("Boştaki Mülk Adedi")
                                .font(.title3)
                            Text("736")
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
                            
                            Text("Beklenen Ödeme")
                                .font(.title3)
                            Text("TL 168,253")
                                .font(.title2)
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Image("statistic-up")
                            .imageScale(.large)
                        
                    }
                    
                }
                .groupBoxStyle(ColoredGroupBox())
                .padding()
                
                GroupBox {
                    
                    HStack {
                        
                        VStack(alignment: .leading, spacing: 5) {
                            
                            Text("Yapılacak Ödeme")
                                .font(.title3)
                            Text("TL 12,865")
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
                
                headerName = "Building Owner"
                
            }
            .navigationBarHidden(true)
            
        }
        .padding(.top, -80)
        
    }
}
