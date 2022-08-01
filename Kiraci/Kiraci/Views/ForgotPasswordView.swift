//
//  ForgetPasswordView.swift
//  Kiraci
//
//  Created by BusranurOK on 17.07.2022.
//

import SwiftUI

struct ForgotPasswordView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var email: String = ""
    @State private var showLoadingScreen = false
    
    var screenSize = UIScreen.main.bounds
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text("Şifrenizi değiştirmek için lütfen tüm alanları doldurun.Ardından Kaydet butonuna basın.")
                .padding()
                .frame(width: self.screenSize.width - 50)
                .background(.yellow)
                .foregroundColor(.white)
                .font(.headline)
                .multilineTextAlignment(.leading)
                .lineLimit(5)
                .lineSpacing(2)
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text("E-Posta")
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(Color("RenterText"))
                
                HStack {
                    
                    Image(systemName: "envelope")
                        .foregroundColor(.gray)
                    
                    SecureField("E-Posta", text: $email)
                    
                }
                .padding()
                .frame(width: self.screenSize.width - 50, height: 50)
                .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray.opacity(0.5), lineWidth: 0.5))
                .background(.gray.opacity(0.07))
                .shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 1)
                
            }
            
            Button(action: {
                
                showLoadingScreen.toggle()
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    showLoadingScreen.toggle()
                    self.presentationMode.wrappedValue.dismiss()
                    
                }
                
            }) {
                
                Text("Şifreyi Güncelle")
                    .padding(.horizontal)
                    .font(.system(size: 20).bold())
                    .frame(width: self.screenSize.width - 50, height: 50)
                
            }
            .foregroundColor(Color.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.red.opacity(0.6)]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(10)
            .shadow(color: Color.red, radius: 3)
            
            Spacer()
            
        }
        .padding(.top)
        .navigationTitle("Şifremi Unuttum")
        .navigationBarTitleDisplayMode(.inline)
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
        
    }
        
}
