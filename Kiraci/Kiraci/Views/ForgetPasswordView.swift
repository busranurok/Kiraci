//
//  ForgetPasswordView.swift
//  Kiraci
//
//  Created by BusranurOK on 17.07.2022.
//

import SwiftUI

struct ForgetPasswordView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var email: String = ""
    @State private var showSignInView = false
    @State private var showLoadingScreen = false
    
    var screenSize = UIScreen.main.bounds
    
    var body: some View {
    
        VStack(spacing: 20) {
            
            Text("Şifrenizi değiştirmek için lütfen tüm alanları doldurunuz. Ardından Kaydet düğmesine basın.")
                .padding()
                .background(.yellow)
                .foregroundColor(.white)
                .font(.headline)
                .multilineTextAlignment(.center)
                .lineLimit(5)
                .lineSpacing(2)
            
            VStack(spacing: 20) {
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("E-posta")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color("RenterText"))
                    
                    HStack {
                        
                        Image(systemName: "envelope.fill")
                            .foregroundColor(.gray)
                        
                        TextField("E*posta", text: $email)
                        
                    }
                    .padding()
                    .frame(width: self.screenSize.width - 50, height: 40)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray, lineWidth: 1))
                    .background(Color.white)
                    .shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 1)
                    
                }
                
                NavigationLink(destination: SignInView(), isActive: $showSignInView) {
                    
                    Button(action: {
                        
                        showLoadingScreen.toggle()
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                            showLoadingScreen.toggle()
                            showSignInView.toggle()
                            
                                }
                        
                    }) {
                        
                        Text("Şifreyi Güncelle")
                            .padding(.horizontal)
                            .font(.system(size: 20))
                            .frame(width: self.screenSize.width - 50, height: 40)
                        
                    }
                    .foregroundColor(Color.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(.red), Color(.red).opacity(0.5)]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(10)
                    .shadow(color: .gray, radius: 5.0)
                    
                }
                
            }
            
        }
        .padding(.top)
        .overlay(
            
            ZStack {
                
                if showLoadingScreen {
                    
                    Color.primary.opacity(0.2)
                        .ignoresSafeArea()
                        .onTapGesture {
                            
                            withAnimation(.spring()){showLoadingScreen.toggle()}
                            
                        }
                    
                    // Sliding From Bottom...
                    DribbleAnimatedView(showLoadingScreen: $showLoadingScreen)
                    //.offsΩt(y: showPopUp ? 0 : UIScreen.main.bounds.height)
                    
                }
                
            }
            
        )
        
        Spacer()
        
    }
}
