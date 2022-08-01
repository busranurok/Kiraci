//
//  SignInScreen.swift
//  Kiraci
//
//  Created by BusranurOK on 16.07.2022.
//

import SwiftUI

struct SignInView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showBaseView = false
    @State private var showForgetPasswordView = false
    @State private var showLoadingScreen = false
    @State private var isEnterText = false
    @State private var showPassword = false
    @State private var passwordImageName = "eye.slash"
    
    var emailBackgroundColor: Color {
        
        return isEnterText ? Color.white : Color.gray.opacity(0.07)
        
    }
    
    var emailTextFieldBorder: Color {
        
        return isEnterText ? Color.green : Color.gray
        
    }
    
    var passwordBackgroundColor: Color {
        
        return isEnterText ? Color.white : Color.gray.opacity(0.07)
        
    }
    
    var passwordTextFieldBorder: Color {
        
        return isEnterText ? Color.green : Color.gray
        
    }
    
    var screenSize = UIScreen.main.bounds
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Image("renterbottom")
                    .padding(.top, -100)
                
                VStack {
                    
                    VStack(spacing: 5) {
                        
                        Image("renterlogo")
                            .resizable()
                            .frame(width: 90, height: 90)
                        
                        Text("Kiracı")
                            .font(.system(size: 40))
                            .fontWeight(.semibold)
                            .foregroundColor(Color("RenterText"))
                        
                    }
                    
                    Spacer(minLength: 100)
                    
                    VStack(spacing: 20) {
                        
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
                            .frame(width: self.screenSize.width - 50, height: 40)
                            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray, lineWidth: 1))
                            .onTapGesture {
                                
                                isEnterText = true
                                
                            }
                            .background(emailBackgroundColor)
                            .border(emailTextFieldBorder)
                            .cornerRadius(3)
                            //.shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 1)
                            
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
                            .frame(width: self.screenSize.width - 50, height: 40)
                            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray, lineWidth: 1))
                            .onTapGesture {
                                
                                isEnterText = true
                                
                            }
                            .background(passwordBackgroundColor)
                            .border(passwordTextFieldBorder)
                            .cornerRadius(3)
                            //.shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 1)
                            
                        }
                        
                        NavigationLink(destination: BaseView(), isActive: $showBaseView) {
                            
                            Button(action: {
                                
                                showLoadingScreen.toggle()
                                
                                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                    showLoadingScreen.toggle()
                                    showBaseView.toggle()
                                    
                                }
                                
                            }) {
                                
                                Text("Giriş")
                                    .padding(.horizontal)
                                    .font(.system(size: 20))
                                    .frame(width: self.screenSize.width - 50, height: 40)
                                
                            }
                            .foregroundColor(Color.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color("RenterText"), Color("Secondary5")]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 5.0)
                            
                        }
                        
                        VStack(spacing: 10) {
                            
                            NavigationLink(destination: BaseView(), isActive: $showBaseView) {
                                
                                Button(action: {
                                    
                                    showBaseView.toggle()
                                    
                                }) {
                                    
                                    HStack {
                                        
                                        
                                        Image(systemName: "bookmark.fill")
                                            .renderingMode(.original)
                                        
                                        Text("Microsoft ile Giriş")
                                            .padding(.horizontal)
                                        
                                    }
                                    .frame(width: self.screenSize.width - 50, height: 40)
                                    .foregroundColor(Color.black)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .shadow(color: .gray, radius: 5.0)
                                    
                                }
                                
                            }
                            
                            NavigationLink(destination: BaseView(), isActive: $showBaseView) {
                                
                                Button(action: {
                                    
                                    showBaseView.toggle()
                                    
                                }) {
                                    
                                    HStack {
                                        
                                        Image(systemName: "bookmark.fill")
                                            .renderingMode(.original)
                                        
                                        Text("Google ile Giriş")
                                            .padding(.horizontal)
                                        
                                        
                                    }
                                    .frame(width: self.screenSize.width - 50, height: 40)
                                    .foregroundColor(Color.black)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .shadow(color: .gray, radius: 5.0)
                                    
                                }
                            }
                        }
                        
                        NavigationLink(destination: ForgotPasswordView(), isActive: $showForgetPasswordView) {
                            
                            Button {
                                
                                showForgetPasswordView.toggle()
                                
                            } label: {
                                
                                Text("Şifremi Unuttum?")
                                    .font(.system(size: 15))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.gray.opacity(0.5))
                                
                            }
                            
                        }
                    }
                    
                    Spacer()
                    
                    ZStack {
                        
                        Color.gray.opacity(0.5)
                        
                        HStack(alignment: .center) {
                            Text ("Henüz bir hesabın yok mu?")
                                .foregroundColor(.black)
                            
                            NavigationLink {
                                
                                SignUpView()
                                
                            } label: {
                                
                                Text("Üye Ol")
                                    .foregroundColor(Color("RenterText"))
                                
                            }
                        }
                        .frame(minWidth: 50, maxWidth: .infinity, minHeight: 10, maxHeight: 20)
                        .navigationTitle("")
                        
                    }
                    .ignoresSafeArea()
                    .frame(minWidth: 50, maxWidth: .infinity, minHeight: 20, maxHeight: 40)
                    
                }
                .padding(.top, 50)
                
            }
        }
        .accentColor(Color.renterText)
        .navigationBarHidden(true)
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
