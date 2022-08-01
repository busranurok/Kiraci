//
//  NotificationViews.swift
//  Kiraci
//
//  Created by BusranurOK on 22.07.2022.
//

import SwiftUI

struct NotificationsView: View {
    
    var body: some View {
        
        ScrollView {
            
            ForEach(1...4, id: \.self) {_ in
                
                VStack {
                    
                    GroupBox {
                        
                        HStack {
                            
                            Spacer()
                            
                            Button {
                                
                                
                                
                            } label: {
                                
                                Circle()
                                    .strokeBorder(.black, lineWidth: 1.5)
                                    .background(Circle().fill(.red))
                                    .frame(width: 15, height: 15)
                                
                            }
                            
                        }
                        .padding(.top, -5)
                        
                        HStack(alignment: .top, spacing: 10) {
                            
                            Image(systemName: "bell")
                                .padding(8)
                                .font(.system(size: 15, weight: .bold))
                                .foregroundColor(.white)
                                .background(Color.renterText)
                                .clipShape(Circle())
                            
                            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
                                .font(.callout)
                                .padding(.vertical, 10)
                                .padding(.horizontal)
                            
                        }
                        
                        HStack {
                            
                            Spacer()
                            
                            Label {
                                
                                Text("28.09.1993")
                                
                            } icon : {
                                
                                Image(systemName: "calendar")
                                
                            }
                            .font(.system(size: 15, weight: .bold))
                            .foregroundColor(.black.opacity(0.5))
                            
                        }
                        
                    }
                    .groupBoxStyle(ColoredGroupBox(customBackgroundColor: Color.gray.opacity(0.1)))
                    .padding([.leading, .trailing], 20)
                    .padding(.top, 8)
                    
                }
                .navigationTitle("Bildirimler")
            }
        }
    }
}
