//
//  TabNavigationView.swift
//  Kiraci
//
//  Created by BusranurOK on 17.07.2022.
//

/*import SwiftUI

struct TabNavigationView: View {
    
    @Binding var headerName: String
    
    init(headerName: Binding<String>) {
        
        self._headerName = headerName
        
        UITabBar.appearance().backgroundColor = UIColor(Color.renterText)
        UITabBar.appearance().unselectedItemTintColor = .darkGray
        
    }
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                TabView {
                    
                    NavigationView {
                        
                        RenterView(headerName: $headerName)
                            
                    }
                    .tabItem{
                        Text("Renter")
                        Image(systemName: "person")
                    }
                    
                    NavigationView{
                        
                        BuildingOwnerView(headerName: $headerName)
                            
                    }
                    .tabItem{
                        Text("Builder Owner")
                        Image(systemName: "house")
                    }
                    
                }
                .accentColor(Color.white)
                
            }
            
        }
        .navigationBarHidden(true)
        
    }
    
}*/
