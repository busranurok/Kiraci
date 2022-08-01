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
    @State private var showOldPassword = false
    @State private var oldPasswordImageName = "eye.slash"
    @State private var showNewPassword = false
    @State private var newPasswordImageName = "eye.slash"
    @State private var showNewAgainPassword = false
    @State private var newAgainPasswordImageName = "eye.slash"
    
    var screenSize = UIScreen.main.bounds
    
    init() {
        
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.init(Color.renterText)]
        
    }
    
    var body: some View {
        
            VStack(spacing: 20) {
                
                Text("Şifrenizi değiştirmek için lütfen aşağıdaki alanı doldurun.Ardından Kaydet butonuna basın.")
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
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(Color("RenterText"))
                    
                    HStack {
                        
                        Image(systemName: "lock.fill")
                            .foregroundColor(.gray.opacity(0.5))
                        
                        SecureField("Eski Şifre", text: $oldPassword)
                        
                        Image(systemName: oldPasswordImageName)
                            .foregroundColor(.gray.opacity(0.5))
                            .onTapGesture {
                                
                                showOldPassword.toggle()
                                
                                if oldPasswordImageName == "eye.slash" {
                                    
                                    oldPasswordImageName = "eye"
                                    
                                }else {
                                    
                                    oldPasswordImageName = "eye.slash"
                                    
                                }
                                
                            }
                        
                    }
                    .padding()
                    .frame(width: self.screenSize.width - 50, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray.opacity(0.5), lineWidth: 0.5))
                    .background(.gray.opacity(0.07))
                    .shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 1)
                    
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Yeni Şifre")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(Color("RenterText"))
                    
                    HStack {
                        
                        Image(systemName: "lock.fill")
                            .foregroundColor(.gray.opacity(0.5))
                        
                        SecureField("Yeni Şifre", text: $newPassword)
                        
                        Image(systemName: newPasswordImageName)
                            .foregroundColor(.gray.opacity(0.5))
                            .onTapGesture {
                                
                                showNewPassword.toggle()
                                
                                if newPasswordImageName == "eye.slash" {
                                    
                                    newPasswordImageName = "eye"
                                    
                                }else {
                                    
                                    newPasswordImageName = "eye.slash"
                                    
                                }
                                
                            }
                        
                    }
                    .padding()
                    .frame(width: self.screenSize.width - 50, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray.opacity(0.5), lineWidth: 0.5))
                    .background(.gray.opacity(0.07))
                    .shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 1)
                    
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Yeni Şifre Tekrar")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(Color("RenterText"))
                    
                    HStack {
                        
                        Image(systemName: "lock.fill")
                            .foregroundColor(.gray.opacity(0.5))
                        
                        SecureField("Yeni Şifre Tekrar", text: $newPasswordAgain)
                        
                        Image(systemName: newAgainPasswordImageName)
                            .foregroundColor(.gray.opacity(0.5))
                            .onTapGesture {
                                
                                showNewAgainPassword.toggle()
                                
                                if newAgainPasswordImageName == "eye.slash" {
                                    
                                    newAgainPasswordImageName = "eye"
                                    
                                }else {
                                    
                                    newAgainPasswordImageName = "eye.slash"
                                    
                                }
                                
                            }
                        
                    }
                    .padding()
                    .frame(width: self.screenSize.width - 50, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray.opacity(0.5), lineWidth: 0.5))
                    .background(.gray.opacity(0.07))
                    .shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 1)
                    
                }
                
                Button(action: {
                    
                    self.presentationMode.wrappedValue.dismiss()
                    
                }) {
                    
                    Text("Kaydet")
                        .padding(.horizontal)
                        .font(.system(size: 20).bold())
                        .frame(width: self.screenSize.width - 50, height: 50)
                    
                }
                .foregroundColor(Color.white)
                .background(LinearGradient(gradient: Gradient(colors: [Color("RenterText"), Color("Secondary5")]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(10)
                .shadow(color: Color.renterText, radius: 7)
                
            }
            .padding(.top)
            .navigationTitle("Şifre Değişikliği")
            
            Spacer()
        
    }
}
