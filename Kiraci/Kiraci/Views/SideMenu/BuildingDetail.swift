//
//  MyBuildingsDetail.swift
//  Kiraci
//
//  Created by BusranurOK on 26.07.2022.
//

import SwiftUI

struct BuildingDetail: View {
    
    @State private var detailsDisclosureExpanded = false
    @State private var contractsDisclosureExpanded = false
    
    private let adaptiveColumns = [GridItem(.adaptive(minimum: 150))]
    
    init() {
        
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.init(Color.renterText)]
        
    }
    
    var body: some View {
        
        VStack {
            
            Form {
                
                Section {
                    
                    HStack {
                        
                        Text("Pendik Evim")
                            .multilineTextAlignment(.leading)
                            .lineLimit(3)
                            .foregroundColor(.black.opacity(0.7))
                            .padding([.top, .bottom], 8)
                            .padding(.leading, 10)
                        
                        Spacer()
                        
                        Text("Durum")
                            .font(.callout)
                            .foregroundColor(.white)
                            .padding(.vertical, 5)
                            .padding(.horizontal)
                            .frame(alignment: .center)
                            .background(
                                
                                RoundedRectangle(cornerRadius: 5)
                                    .fill(Color.red)
                                
                            )
                        
                    }
                    
                } header: {
                    
                    HStack {
                        
                        Image(systemName: "house")
                            .foregroundColor(Color.renterText)
                        Text("Mülk Adı")
                            .foregroundColor(.black)
                        
                    }
                    .font(.subheadline)
                    
                }
                
                Section {
                    
                    HStack {
                        
                        VStack(spacing: 0 ) {
                            
                            Image("femaleavatar")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.renterText, lineWidth: 3))
                                .padding(.top, 6)
                                .padding(.bottom, 4)
                                .padding(.horizontal, 8)
                            
                        }
                        
                        VStack(alignment: .leading, spacing: 12) {
                            
                            Text("Büşra Nur OK")
                                .font(.title3)
                                .foregroundColor(.black.opacity(0.8))
                            
                        }
                        .padding(.leading, 10)
                        
                        Spacer(minLength: 0)
                        
                    }
                    .padding(.horizontal, 5)
                    .padding([.top, .bottom], 5)
                    
                } header: {
                    
                    HStack {
                        
                        Image(systemName: "person")
                            .foregroundColor(Color.renterText)
                        
                        Text("Mülk Sahibi")
                            .foregroundColor(.black)
                        
                    }
                    .font(.subheadline)
                    
                }
                
                Section {
                    
                    HStack {
                        
                        Text("Win Young Bilgi ve İletişim Teknolojileri A.Ş.")
                            .multilineTextAlignment(.leading)
                            .lineLimit(3)
                            .foregroundColor(.black.opacity(0.7))
                            .padding([.top, .bottom], 8)
                            .padding(.leading, 10)
                        
                    }
                    
                } header: {
                    
                    HStack {
                        
                        Image(systemName: "building")
                            .foregroundColor(Color.renterText)
                        
                        Text("Yönetici Şirket")
                            .foregroundColor(.black)
                        
                    }
                    .font(.subheadline)
                    
                }
                
                Section {
                    
                    HStack {
                        
                        Text("Remax")
                            .multilineTextAlignment(.leading)
                            .lineLimit(3)
                            .foregroundColor(.black.opacity(0.7))
                            .padding([.top, .bottom], 8)
                            .padding(.leading, 10)
                        
                    }
                    
                } header: {
                    
                    HStack {
                        
                        Image(systemName: "building")
                            .foregroundColor(Color.renterText)
                        
                        Text("Emlakçı")
                            .foregroundColor(.black)
                        
                    }
                    .font(.subheadline)
                    
                }

                Section {
                    
                    DisclosureGroup(isExpanded: $detailsDisclosureExpanded) {
                        
                        FormDetailView()
                        
                    } label: {
                        
                        Label("Detaylar", systemImage: "doc.text.magnifyingglass")
                        
                    }
                    .accentColor(Color.renterText)
                    
                }
                
                Section {
                    
                    DisclosureGroup(isExpanded: $contractsDisclosureExpanded) {
                        
                        ContractCardView()
                        
                    } label: {
                        
                        Label("Sözleşmeler", systemImage: "doc.text")
                        
                    }
                    .accentColor(Color.renterText)
                    
                }
                
            }
            
            Spacer(minLength: 0)
            
        }
        .navigationTitle("Mülk Detayı")
 
    }
    
    @ViewBuilder
    func FormDetailView() -> some View {
        
        VStack {
            
            VStack(alignment: .leading, spacing: 15) {
                
                FormDetailCell(label: "Adres", content: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.", isDivider: true)
                
                FormDetailCell(label: "İlçe", content: "Pendik", isDivider: true)
                
                FormDetailCell(label: "İl", content: "İstanbul", isDivider: true)
                
                FormDetailCell(label: "Ülke", content: "Türkiye", isDivider: true)
                
                FormDetailCell(label: "Mülk Tipi", content: "Daire", isDivider: true)
                
                FormDetailCell(label: "Aidat", content: "TL 100", isDivider: true)
                
                FormDetailCell(label: "Kat Sayısı", content: "25", isDivider: true)
                
                FormDetailCell(label: "Bulunduğu Kat", content: "Bilinmiyor", isDivider: true)
                
                FormDetailCell(label: "Isıtma Tipi", content: "Bilinmiyor", isDivider: true)
                
                VStack(alignment: .leading, spacing: 15) {
                    
                    FormDetailCell(label: "Metrekare", content: "120", isDivider: true)
                    
                    FormDetailCell(label: "Açıklama", content: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of", isDivider: false)
                    
                }
                
            }
            .padding()
            
            Spacer(minLength: 0)
            
        }
        
    }
    
    @ViewBuilder
    func FormDetailCell(label: String, content: String, isDivider: Bool) -> some View {
        
        VStack(alignment: .leading, spacing: 3) {
            
            Text(label)
                .bold()
            
            Text(content)
                .lineLimit(10)
            
        }
        
        if isDivider {
            
            Divider()
                .frame(height: 1)
                .overlay(.green.opacity(0.2))
            
        }
    }
}
