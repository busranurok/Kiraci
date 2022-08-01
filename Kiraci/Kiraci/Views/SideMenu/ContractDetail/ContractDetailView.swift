//
//  ContractDetailView.swift
//  Kiraci
//
//  Created by BusranurOK on 29.07.2022.
//

import SwiftUI

struct ContractDetailView: View {
    
    @State private var contractInformationDisclosureExpanded = false
    @State private var pricesDisclosureExpanded = false
    @State private var buildingDisclosureExpanded = false
    @State private var paymentPlanDisclosureExpanded = false
    @State private var lessorOfficeDisclosureExpanded = false
    @State private var guarantorsDisclosureExpanded = false
    @State private var termsDisclosureExpanded = false
    
    init() {
        
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.init(Color.renterText)]
        
    }
    
    var body: some View {
        
        VStack {
            
            Form {

                Section {
                    
                    DisclosureGroup(isExpanded: $contractInformationDisclosureExpanded) {
                        
                        ContractInformationView()
                        
                    } label: {
                        
                        Label("Sözleşme Bilgileri", systemImage: "doc.text")
                        
                    }
                    .accentColor(.green)
                    
                }
                
                Section {
                    
                    DisclosureGroup(isExpanded: $pricesDisclosureExpanded) {
                        
                        PricesView()
                        
                    } label: {
                        
                        Label("Ücretler", systemImage: "banknote")
                        
                    }
                    .accentColor(.green)
                    
                }
                
                Section {
                    
                    DisclosureGroup(isExpanded: $buildingDisclosureExpanded) {
                        
                        BuildingView()
                        
                    } label: {
                        
                        Label("Mülk", systemImage: "building")
                        
                    }
                    .accentColor(.green)
                    
                }
                
                Section {
                    
                    DisclosureGroup(isExpanded: $lessorOfficeDisclosureExpanded) {
                        
                        LessorOfficerView()
                        
                    } label: {
                        
                        Label("Kiraya Veren Yetkili", systemImage: "person")
                        
                    }
                    .accentColor(.green)
                    
                }
                
                Section {
                    
                    DisclosureGroup(isExpanded: $paymentPlanDisclosureExpanded) {
                        
                        PaymentPlanCardView()
                        
                    } label: {
                        
                        Label("Ödeme Planı", systemImage: "doc.text")
                        
                    }
                    .accentColor(.green)
                    
                }
                
                Section {
                    
                    DisclosureGroup(isExpanded: $termsDisclosureExpanded) {
                        
                        TermsView()
                        
                    } label: {
                        
                        Label("Koşullar", systemImage: "doc.text")
                        
                    }
                    .accentColor(.green)
                    
                }
                
                Section {
                    
                    DisclosureGroup(isExpanded: $guarantorsDisclosureExpanded) {
                        
                        GuarantorsView()
                        
                    } label: {
                        
                        Label("Kefiller", systemImage: "person")
                        
                    }
                    .accentColor(.green)
                    
                }
                
            }
            
        }
        .navigationTitle("Sözleşme Detayı")
        
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

