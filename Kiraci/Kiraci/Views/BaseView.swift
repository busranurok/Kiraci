//
//  BaseView.swift
//  Kiraci
//
//  Created by BusranurOK on 18.07.2022.
//

import SwiftUI

struct BaseView: View {
    
    @State var showMenu: Bool = false
    @State var currentPage = Page.dashboard
    
    // Hiding Native One
    init() {
        
        UITabBar.appearance().isHidden = true
    }
    
    @State var currentTab = DashboardPage.renter
    
    // Offset for Both Drag Gesuture and showing Menu...
    @State var offset: CGFloat = 0
    @State var lastStoredOffset: CGFloat = 0
    
    
    var body: some View {
        
        let sideBarWidth = getRect().width - 90
        
        NavigationView {
            
            HStack(spacing: 0) {
                
                // Side menu...
                SideMenu(showMenu: $showMenu, currentPage: $currentPage)
                
                // Main Tab View...
                VStack(spacing: 0) {
                    
                        HeaderView(showMenu: $showMenu)
                            .frame(maxHeight: 40)
        
                    // MARK: Page Selection
                    switch currentPage {
                        
                    /*case .dashboard:
                        
                     //fonksiyona çevrildi
                        TabView(selection: $currentTab) {
                            
                            if currentTab == DashboardPages.renter {
                                
                                RenterDashboardView()
                                    .navigationBarTitleDisplayMode(.inline)
                                    .navigationBarHidden(true)
                                    .tag("RenterDashboardView")
                                
                            } else {
                                
                                
                                BuildingOwnerDashboardView()
                                    .navigationBarTitleDisplayMode(.inline)
                                    .navigationBarHidden(true)
                                    .tag("BuildingOwnerDashboardView")
                                
                            }
                        }*/
                        
                    case .dashboard:
                        VBDashboardView()
                        
                    case .myRentedBuildings:
                        VBMyRentedBuildingsView()
                        
                    case .myRentedContracts:
                        VBMyRentedContractsView()
                        
                    case .myBuildings:
                        VBMyBuildingsView()
                        
                    case .myBuildingsContracts:
                        VBMyBuildingsContractsView()
                        
                    case .settings:
                        VBSettingsView()
                        
                    case .profile:
                        VBProfileView()
                        
                    }
                    
                    // switch case e çevrildi
                    /*if currentPage == Pages.dashboard{
                        
                        TabView(selection: $currentTab) {
                            
                            if currentTab == DashboardPages.renter {
                                
                                RenterDashboardView()
                                    .navigationBarTitleDisplayMode(.inline)
                                    .navigationBarHidden(true)
                                    .tag("RenterDashboardView")
                                
                            } else {
                                
                                
                                BuildingOwnerDashboardView()
                                    .navigationBarTitleDisplayMode(.inline)
                                    .navigationBarHidden(true)
                                    .tag("BuildingOwnerDashboardView")
                                
                            }
                        }
                        
                    }
                    else if currentPage == Pages.myBuildings {
                        
                        Spacer()
                        
                        MyBuildingsView()
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(true)
                            .tag("Mülklerim")
                            .background(.green)
                        
                        
                    }*/
                    
                    //MARK: Tab Bar for Dashboard
                    if currentPage == Page.dashboard {
                        
                        // Custom Tab Bar...
                        VStack(spacing: 0) {
                            
                            Divider()
                            
                            HStack(spacing: 0) {
                                
                                // Tab Buttons
                                TabButton(title: "Kiracı", image: UIImage(systemName: "person")!, page: .renter)
                                
                                TabButton(title: "Mülk Sahibi", image: UIImage(systemName: "house")!, page: .buildingOwner)
                                
                            }
                            .padding([.top], 15)
                            
                        }
                    }
                }
                .frame(width: getRect().width)
                // BG when menu is showing...
                .overlay(
                    
                    Rectangle()
                        .fill(
                            
                            Color.primary
                                .opacity(Double(offset / sideBarWidth) / 5)
                            
                        )
                        .ignoresSafeArea(.container, edges: .vertical)
                        .onTapGesture {
                            
                            withAnimation {
                                
                                showMenu.toggle()
                                
                            }
                            
                        }
                )
                
            }
            // max Size
            .frame(width: getRect().width + sideBarWidth)
            .offset(x: -sideBarWidth / 2)
            .offset(x: offset)
            
        }
        .animation(.easeOut, value: offset == 0)
        .onChange(of: showMenu) { newValue in
            
            if showMenu && offset == 0 {
                
                offset = sideBarWidth
                lastStoredOffset = offset
                
            }
            
            if !showMenu && offset == sideBarWidth {
                
                offset = 0
                lastStoredOffset = 0
                
            }
            
        }
        // No Nav bar title...
        // Hiding nav bar...
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(true)
    }
    
    @ViewBuilder
    func TabButton(title: String, image: UIImage, page: DashboardPage) -> some View {

        Button {
            
            currentTab = page
            
        } label: {
            
            VStack(spacing: 14) {
                
                Image(uiImage: image)
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 22, height: 22)
                
                Text(title)
                
            }
            .foregroundColor(currentTab == page ? .green : .gray)
            .frame(maxWidth: .infinity)
        }
    }
}

// MARK: ViewBuilders
extension BaseView {
    
    @ViewBuilder
    func VBDashboardView() -> some View {
        
        TabView(selection: $currentTab) {
            
            if currentTab == DashboardPage.renter {
                
                RenterDashboardView()
                    .navigationTitle("")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                //En üst view de isem padding veremem. Bir üst view e göre poadding verilir.
                    .padding(.top, 80)
                   
            } else {
                
                BuildingOwnerDashboardView()
                    .navigationTitle("")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                    .padding(.top, 80)
            }
        }
    }
    
    @ViewBuilder
    func VBMyRentedBuildingsView() -> some View {
        
        MyRentedBuildingsView()
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        
    }
    
    @ViewBuilder
    func VBMyRentedContractsView() -> some View {
        
        MyRentedContractsView()
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        
        
    }
    
    @ViewBuilder
    func VBMyBuildingsView() -> some View {
        
        MyBuildingsView()
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        
    }
    
    @ViewBuilder
    func VBMyBuildingsContractsView() -> some View {
        
        MyBuildingsContractsView()
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        
    }
    
    @ViewBuilder
    func VBSettingsView() -> some View {
        
        //Bunu silmemin sebebi settingview in içerisinde list tanımlamam. List tanımladığım için aşağı atıyor ve boşluk bırakıyor. Boşluk bırakmasını istemediğim için spacer i sildim.
        //Spacer()
        
        SettingsView()
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        
    }
    
    @ViewBuilder
    func VBProfileView() -> some View {
        
        Spacer()
        
        ProfileView()
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        
    }
    
}
