//
//  CustomSignUpp.swift
//  Kiraci
//
//  Created by BusranurOK on 31.07.2022.
//

import SwiftUI

struct SignUpView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var email: String = ""
    @State private var phone: String = ""
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var passwordAgain: String = ""
    @State private var showLoadingScreen = false
    @State private var showPassword = false
    @State private var showPasswordAgain = false
    @State private var passwordImageName = "eye.slash"
    @State private var passwordAgainImageName = "eye.slash"
    @State private var showCustomAlert = false
    
    var screenSize = UIScreen.main.bounds
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                // Welcome Back text for 6 half of the screen
                Text("Kayıt Ol")
                    .font(.largeTitle).bold()
                    .tracking(3)
                    .padding(.leading, -190)
                    .padding(.top, 30)
                    .foregroundColor(Color.renterText)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .frame(height: getRect().height / 10)
                    .background(
                        
                            Image("signup")
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .padding(.top, 120)
                        
                    )
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(spacing: 20) {
                        
                        VStack(spacing: 30) {
                            
                            VStack(alignment: .leading, spacing: 10) {
                                
                                Text("E-posta")
                                    .font(.system(size: 15))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("RenterText"))
                                
                                HStack {
                                    
                                    Image(systemName: "envelope.fill")
                                        .foregroundColor(.gray.opacity(0.5))
                                    
                                    TextField("E-posta", text: $email)
                                    
                                }
                                .padding()
                                .frame(width: self.screenSize.width - 50, height: 50)
                                .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray.opacity(0.5), lineWidth: 0.5))
                                .background(.gray.opacity(0.07))
                                .shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 1)
                                
                            }
                            
                            VStack(alignment: .leading, spacing: 10) {
                                
                                Text("Telefon")
                                    .font(.system(size: 15))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("RenterText"))
                                
                                HStack {
                                    
                                    Image(systemName: "phone")
                                        .foregroundColor(.gray.opacity(0.5))
                                    
                                    TextField("Telefon", text: $phone)
                                    
                                }
                                .padding()
                                .frame(width: self.screenSize.width - 50, height: 50)
                                .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray.opacity(0.5), lineWidth: 0.5))
                                .background(.gray.opacity(0.07))
                                .shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 1)
                                
                            }
                            
                            VStack(alignment: .leading, spacing: 10) {
                                
                                Text("Adınız")
                                    .font(.system(size: 15))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("RenterText"))
                                
                                HStack {
                                    
                                    Image(systemName: "person")
                                        .foregroundColor(.gray.opacity(0.5))
                                    
                                    TextField("Adınız", text: $username)
                                    
                                }
                                .padding()
                                .frame(width: self.screenSize.width - 50, height: 50)
                                .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray.opacity(0.5), lineWidth: 0.5))
                                .background(.gray.opacity(0.07))
                                .shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 1)
                                
                            }
                            
                            VStack(alignment: .leading, spacing: 10) {
                                
                                Text("Şifre")
                                    .font(.system(size: 15))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("RenterText"))
                                
                                HStack {
                                    
                                    Image(systemName: "lock.fill")
                                        .foregroundColor(.gray.opacity(0.5))
                                    
                                    if showPassword {
                                        
                                        TextField("Şifre", text: $password)
                                        
                                    }else {
                                        
                                        SecureField("Şifre", text: $password)
                                        
                                    }
                                    
                                    Image(systemName: passwordImageName)
                                        .foregroundColor(.gray.opacity(0.5))
                                        .onTapGesture {
                                            
                                            showPassword.toggle()
                                            
                                            if passwordImageName == "eye.slash" {
                                                
                                                passwordImageName = "eye"
                                                
                                            }else {
                                                
                                                passwordImageName = "eye.slash"
                                                
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
                                
                                Text("Şifre Tekrar")
                                    .font(.system(size: 15))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("RenterText"))
                                
                                HStack {
                                    
                                    Image(systemName: "lock.fill")
                                        .foregroundColor(.gray.opacity(0.5))
                                    
                                    if showPassword {
                                        
                                        TextField("Şifre Tekrar", text: $passwordAgain)
                                        
                                    }else {
                                        
                                        SecureField("Şifre Tekrar", text: $passwordAgain)
                                        
                                    }
                                    
                                    Image(systemName: passwordAgainImageName)
                                        .foregroundColor(.gray.opacity(0.5))
                                        .onTapGesture {
                                            
                                            showPasswordAgain.toggle()
                                            
                                            if passwordAgainImageName == "eye.slash" {
                                                
                                                passwordAgainImageName = "eye"
                                                
                                            }else {
                                                
                                                passwordAgainImageName = "eye.slash"
                                                
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
                                
                                showLoadingScreen.toggle()
                                
                                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                    showLoadingScreen.toggle()
                                    showCustomAlert.toggle()
                                    //self.presentationMode.wrappedValue.dismiss()
                                    
                                }
                                
                            }) {
                                
                                Text("Kayıt Ol")
                                    .padding(.horizontal)
                                    .font(.system(size: 20).bold())
                                    .frame(width: self.screenSize.width - 50, height: 50)
                                
                            }
                            .foregroundColor(Color.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color("RenterText"), Color("Secondary5")]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(10)
                            .shadow(color: Color.renterText, radius: 7)
                            
                        }
                        
                    }
                    .padding(.vertical)
                    .padding(.top, 30)
                    
                    Spacer(minLength: 0)
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.white)
                // Applying Custom Corner
                .clipShape(CustomCorners(corners: [.topLeft, .topRight], radius: 30))
                .shadow(color: .gray.opacity(0.4), radius: 10, x: 0, y: -1)
                .ignoresSafeArea()
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
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
            
            if showCustomAlert
            {
                CustomPopUpView(showCustomAlert: $showCustomAlert)
            }
        }
    }
}
