//
//  SideMenu.swift
//  Kiraci
//
//  Created by BusranurOK on 18.07.2022.
//

import SwiftUI

struct SideMenu: View {
    
    @Binding var showMenu: Bool
    @Binding var currentPage: Pages
        
    init(showMenu: Binding<Bool>, currentPage: Binding<Pages>) {
        
        self._showMenu = showMenu
        self._currentPage = currentPage
        
        UITabBar.appearance().backgroundColor = UIColor(Color.renterText)
        UITabBar.appearance().unselectedItemTintColor = .darkGray
        
    }
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            VStack(alignment: .leading, spacing: 14) {
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Image(systemName: "person")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 65, height: 65)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.black, lineWidth: 5))
                    
                    
                    Text("Büşra Nur")
                        .font(.title2.bold())
                    
                    Text("Kiracı & Mülk Sahibi")
                        .font(.callout)
                    
                }
                .padding(.horizontal)
                .padding(.leading)
                .padding(.bottom)
                
                Divider()
                    .frame(height: 2)
                    .background(.white)
                
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .leading, spacing: 40) {
                    
                    // Tab buttons...
                    TabButton(title: "Ana sayfa", image: UIImage(systemName: "house")!, page: .dashboard)
                    
                    TabButton(title: "Mülklerim", image: UIImage(systemName: "house")!, page: .myBuildings)
                    
                    TabButton(title: "Mülklerime Ait Sözleşmeler", image: UIImage(systemName: "doc.text")!, page: .myBuildingsContracts)
                    
                    TabButton(title: "Ödeme Bilgisi", image: UIImage(systemName: "banknote")!, page: .paymentInformation)
                    
                    TabButton(title: "Kurumsal Hesap", image: UIImage(systemName: "building.2")!, page: .corporateAccount)
                    
                    TabButton(title: "Ayarlar", image: UIImage(systemName: "gear")!, page: .settings)
                    
                }
                .padding()
                .padding(.leading)
                .padding(.top, 20)
                
            }
            
            VStack(spacing: 0) {
                
                Divider()
                    .frame(height: 2)
                    .background(.white)
                
                Button {
                    
                    
                    
                } label: {
                    
                    Image(systemName: "xmark.circle")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    
                }
                .padding([.horizontal, .top], 30)
                .foregroundColor(.red)
                
            }
            
        }
        .navigationBarHidden(true)
        .padding(.top)
        .frame(maxWidth: .infinity, alignment: .leading)
        // Max Width
        .frame(width: getRect().width - 90)
        .frame(maxHeight: .infinity)
        .background(
            
            Color.renterText
            //.opacity(0.5)
                .ignoresSafeArea(.container, edges: .vertical)
            
        )
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
    
    @ViewBuilder
    func TabButton(title: String, image: UIImage, page: Pages) -> some View {
        // For navigation...
        Button {
            
            currentPage = page
            showMenu = false
            
        } label: {
            
            HStack(spacing: 14) {
                
                Image(uiImage: image)
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 22, height: 22)
                
                Text(title)
                    .bold()
                
            }
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .leading)
            
        }
        
        
    }
    
}

// Extenting view to get screen rect
extension View {
    
    func getRect() -> CGRect {
        
        return UIScreen.main.bounds
        
    }
    
}
