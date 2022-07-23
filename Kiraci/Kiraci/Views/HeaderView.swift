//
//  Home.swift
//  Kiraci
//
//  Created by BusranurOK on 20.07.2022.
//

import SwiftUI

struct HeaderView: View {
    
    @Binding var showMenu: Bool
    @State var count = 8
    
    var body: some View {
        
        VStack {
            
            VStack(spacing: 0) {
                
                HStack {
                    
                    Button {
                        
                        withAnimation {
                            
                            showMenu.toggle()
                            
                        }
                        
                    } label: {
                        
                        Image("hamburgermenu")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 20, height: 20)
                        
                    }
                    
                    Spacer()
                    
                    ZStack {
                        
                        // Navigation Link..
                       NavigationLink {
                            
                           NotificationViews()
                               .navigationTitle("Notifications")
                            
                            
                        } label: {
                            
                            Image(systemName: "bell")
                                .resizable()
                                .renderingMode(.template)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 22, height: 22)
                                .foregroundColor(.gray)
                            
                        }
                        //.navigationTitle("Dashboard")
                        
                        if count != 0 {
                            
                            Text("\(count)")
                                .padding(4)
                                .background(Color.red)
                                .clipShape(Circle())
                                .foregroundColor(.white)
                                .offset(x: 10, y: -8)
                            
                        }
                    }
                    .onAppear {
                        
                        withAnimation(.spring()) {
                            
                        }
                        
                    }
                    
                }
                .padding(.horizontal)
                .padding(.vertical, 10)
                
                Divider()
                
            }
            .overlay(
                
                Image("renterlogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25)
                
            )
            
            Spacer()
            
        }
        
    }
}
