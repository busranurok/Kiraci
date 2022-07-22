//
//  HomeView.swift
//  Kiraci
//
//  Created by BusranurOK on 17.07.2022.
//

/*import SwiftUI

struct TryHomeView: View {
    
    @State var headerName: String = "Renter"
    @State var count = 0
    
    var body: some View {
        
        NavigationView {
            
            TabNavigationView(headerName: $headerName)
            
        }
        .font(.title)
        .padding(.top, 25)
        .background(Color.renterText)
        .navigationTitle(headerName)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            
            ToolbarItem(placement: .navigationBarLeading) {
                
                Button(action: {}) {
                    Image(systemName: "line.3.horizontal")
                        .padding(.horizontal)
                    
                }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                
                ZStack {
                    
                    Button(action: {
                        
                        self.count += 1
                        
                    }) {
                        Image(systemName: "bell.fill")
                            .padding(.horizontal)
                        
                    }
                    
                    if count != 0 {
                        
                        Text("\(count)")
                            .padding(4)
                            .background(Color.black)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .offset(x: 18, y: -8)
                        
                    }
                }
                .animation(.spring())
            }
        }
        .tint(Color.white)
        .navigationBarBackButtonHidden(true)
        
    }
}
*/
