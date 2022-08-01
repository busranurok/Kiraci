//
//  ProfileView.swift
//  Kiraci
//
//  Created by BusranurOK on 1.08.2022.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var contactInformationDisclosureExpanded = false
    @State private var bankAccountsDisclosureExpanded = false
    
    var body: some View {
        
        VStack {
            
            Form {
                
                Section {
                    
                    VStack {
                        
                        HStack(spacing: 10 ) {
                            
                            Image("femaleavatar")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 90, height: 90)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.renterText, lineWidth: 3))
                                .padding(.top, 6)
                                .padding(.bottom, 4)
                                .padding(.horizontal, 8)
                            
                            Text("Büşra Nur OK")
                                .font(.title3)
                                .foregroundColor(.black.opacity(0.8))
                            
                        }
                        
                        VStack(alignment: .leading, spacing: 12) {
                            
                            VStack(alignment: .leading, spacing: 3) {
                                
                                Label {
                                    
                                    Text("Tip")
                                        .font(.subheadline)
                                        .bold()
                                    
                                } icon : {
                                    
                                    Image(systemName: "person")
                                        .foregroundColor(Color.renterText)
                                    
                                }
                                .font(.system(size: 15, weight: .bold))
                                .foregroundColor(.black.opacity(0.8))
                                
                                Text("Gerçek Kişi")
                                    .lineLimit(5)
                                    .foregroundColor(.black.opacity(0.6))
                                
                            }

                            
                            VStack(alignment: .leading, spacing: 3) {
                                
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
                                
                                Text("busranur@gmail.cm")
                                    .lineLimit(5)
                                    .foregroundColor(.black.opacity(0.6))
                                
                            }
                            
                            VStack(alignment: .leading, spacing: 3) {
                                
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
                                
                                Text("(+090)6661802948")
                                    .lineLimit(5)
                                    .foregroundColor(.black.opacity(0.6))
                                
                            }
                            
                            VStack(alignment: .leading, spacing: 3) {
                                
                                Label {
                                    
                                    Text("Kimlik No")
                                        .font(.subheadline)
                                        .bold()
                                    
                                } icon : {
                                    
                                    Image(systemName: "creditcard")
                                        .foregroundColor(Color.renterText)
                                    
                                }
                                .font(.system(size: 15, weight: .bold))
                                .foregroundColor(.black.opacity(0.8))
                                
                                Text("11111111111")
                                    .lineLimit(5)
                                    .foregroundColor(.black.opacity(0.6))
                                
                            }
                            
                            VStack(alignment: .leading, spacing: 3) {
                                
                                Label {
                                    
                                    Text("Yetkili Şirket")
                                        .font(.subheadline)
                                        .bold()
                                    
                                } icon : {
                                    
                                    Image(systemName: "building")
                                        .foregroundColor(Color.renterText)
                                    
                                }
                                .font(.system(size: 15, weight: .bold))
                                .foregroundColor(.black.opacity(0.8))
                                
                                Text("Win Young Anonim Şirketi")
                                    .lineLimit(5)
                                    .foregroundColor(.black.opacity(0.6))
                                
                            }

                            
                        }
                        .padding(.leading, 10)
                        
                        Spacer(minLength: 0)
                        
                    }
                    .padding(.horizontal, 5)
                    .padding([.top, .bottom], 5)
                    
                }

                Section {
                    
                    DisclosureGroup(isExpanded: $contactInformationDisclosureExpanded) {
                        
                        ContactInformationCardView()
                        
                    } label: {
                        
                        Label("İletişim Bilgileri", systemImage: "laptopcomputer.and.iphone")
                        
                    }
                    .accentColor(Color.renterText)
                    
                }
                
                Section {
                    
                    DisclosureGroup(isExpanded: $bankAccountsDisclosureExpanded) {
                        
                        BankAccountsCardView()
                        
                    } label: {
                        
                        Label("Banka Hesapları", systemImage: "banknote")
                        
                    }
                    .accentColor(Color.renterText)
                    
                }
            }
            
            Spacer(minLength: 0)
            
        }
        .navigationTitle("")
        
    }
}
