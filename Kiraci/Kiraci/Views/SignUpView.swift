//
//  SignUpView.swift
//  Kiraci
//
//  Created by BusranurOK on 17.07.2022.
//

import SwiftUI

struct SignUpView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var email: String = ""
    @State private var phone: String = ""
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var passwordAgain: String = ""
    
    var screenSize = UIScreen.main.bounds
    
    var body: some View {
        
        /*VStack {
         
         ZStack(alignment: .top) {
         
         CustomSignUpShape()
         .fill(Color.renterText)
         .opacity(0.5)
         .frame(height: 200.0)
         .shadow(radius: 5)
         .overlay(Text("Sign Up")
         .font(.largeTitle)
         .fontWeight(.bold))
         .padding(.horizontal, -40)
         
         /*CustomSignUpShape(yOffSet: 0.25)
          .fill(Color.blue)
          .opacity(0.5)
          .frame(height: 150.0)
          .shadow(radius: 4)
          */
         
         }
         
         Spacer()
         
         Text("Filled sign up")
         
         }
         .edgesIgnoringSafeArea(.top)*/
        
        VStack(spacing: 70) {
            
            Image("home")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .clipShape(CustomSignUpShape())
                .overlay(Text("Sign Up")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.renterText))
                .padding(.horizontal, -40)
            
            VStack(spacing: 30) {
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Email")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color("RenterText"))
                    
                    HStack {
                        
                        Image(systemName: "envelope.fill")
                            .foregroundColor(.gray)
                        
                        TextField("Email", text: $email)
                        
                    }
                    .padding()
                    .frame(width: self.screenSize.width - 50, height: 40)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray, lineWidth: 1))
                    .background(Color.white)
                    .shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 1)
                    
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Phone")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color("RenterText"))
                    
                    HStack {
                        
                        Image(systemName: "phone")
                            .foregroundColor(.gray)
                        
                        TextField("Phone", text: $phone)
                        
                    }
                    .padding()
                    .frame(width: self.screenSize.width - 50, height: 40)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray, lineWidth: 1))
                    .background(Color.white)
                    .shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 1)
                    
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Username")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color("RenterText"))
                    
                    HStack {
                        
                        Image(systemName: "person")
                            .foregroundColor(.gray)
                        
                        TextField("Username", text: $username)
                        
                    }
                    .padding()
                    .frame(width: self.screenSize.width - 50, height: 40)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray, lineWidth: 1))
                    .background(Color.white)
                    .shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 1)
                    
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Password")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color("RenterText"))
                    
                    HStack {
                        
                        Image(systemName: "lock.fill")
                            .foregroundColor(.gray)
                        
                        SecureField("Password", text: $password)
                        
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
                    
                    Text("Password Again")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color("RenterText"))
                    
                    HStack {
                        
                        Image(systemName: "lock.fill")
                            .foregroundColor(.gray)
                        
                        SecureField("Password", text: $passwordAgain)
                        
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
                    
                    Text("Sign Up")
                        .padding(.horizontal)
                        .font(.system(size: 20))
                        .frame(width: self.screenSize.width - 50, height: 40)
                    
                }
                .foregroundColor(Color.white)
                .background(LinearGradient(gradient: Gradient(colors: [Color("RenterText"), Color("Secondary5")]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(10)
                .shadow(color: .gray, radius: 5.0)
                
            }
            
            Spacer()
            
        }
        .edgesIgnoringSafeArea(.top)
    }
}

