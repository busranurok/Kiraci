//
//  ChangePasswordView.swift
//  Kiraci
//
//  Created by BusranurOK on 23.07.2022.
//

import SwiftUI

struct ChangePasswordView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var oldPassword: String = ""
    @State private var newPassword: String = ""
    @State private var newPasswordAgain: String = ""
    
    var screenSize = UIScreen.main.bounds
    
    var body: some View {
        
            VStack(spacing: 20) {
                
                Text("Şifrenizi değiştirmek için lütfen aşağıdaki alanı doldurun.Ardından Şifreyi Güncelle butonuna basın.")
                    .padding()
                    .frame(width: self.screenSize.width - 50)
                    .background(.yellow)
                    .foregroundColor(.white)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(5)
                    .lineSpacing(2)
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Eski Şifre")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color("RenterText"))
                    
                    HStack {
                        
                        Image(systemName: "lock.fill")
                            .foregroundColor(.gray)
                        
                        SecureField("Eski Şifre", text: $oldPassword)
                        
                        Image(systemName: "eye.slash")
                            .foregroundColor(.gray)
                        
                    }
                    .padding()
                    .frame(width: self.screenSize.width - 50, height: 40)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray, lineWidth: 1))
                    .background(Color.white)
                    .shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 1)
                    
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Yeni Şifre")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color("RenterText"))
                    
                    HStack {
                        
                        Image(systemName: "lock.fill")
                            .foregroundColor(.gray)
                        
                        SecureField("Yeni Şifre", text: $newPassword)
                        
                        Image(systemName: "eye.slash")
                            .foregroundColor(.gray)
                        
                    }
                    .padding()
                    .frame(width: self.screenSize.width - 50, height: 40)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray, lineWidth: 1))
                    .background(Color.white)
                    .shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 1)
                    
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Yeni Şifre Tekrar")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color("RenterText"))
                    
                    HStack {
                        
                        Image(systemName: "lock.fill")
                            .foregroundColor(.gray)
                        
                        SecureField("Yeni Şifre Tekrar", text: $newPasswordAgain)
                        
                        Image(systemName: "eye.slash")
                            .foregroundColor(.gray)
                        
                    }
                    .padding()
                    .frame(width: self.screenSize.width - 50, height: 40)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray, lineWidth: 1))
                    .background(Color.white)
                    .shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 1)
                    
                }
                
                Button(action: {
                    
                    self.presentationMode.wrappedValue.dismiss()
                    
                }) {
                    
                    Text("Kaydet")
                        .padding(.horizontal)
                        .font(.system(size: 20))
                        .frame(width: self.screenSize.width - 50, height: 40)
                    
                }
                .foregroundColor(Color.white)
                .background(LinearGradient(gradient: Gradient(colors: [Color("RenterText"), Color("Secondary5")]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(10)
                .shadow(color: .gray, radius: 5.0)
                
            }
            .padding(.top)
            .navigationTitle("Şifre Değişikliği")
            
            Spacer()
        
    }
}
