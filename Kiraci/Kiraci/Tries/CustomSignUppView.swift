//
//  CustomSignUp.swift
//  Kiraci
//
//  Created by BusranurOK on 29.07.2022.
//

import SwiftUI

struct CustomSignUppView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var email: String = ""
    @State private var phone: String = ""
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var passwordAgain: String = ""
    
    var screenSize = UIScreen.main.bounds
    
    var body: some View {
    
        VStack(spacing: 0) {
            
            VStack {
                
                ZStack {
                    
                    HStack {
                        
                        Spacer(minLength: 0)
                        
                        Button {
                            
                            
                            
                        } label: {
                            
                            Image(systemName: "square.and.arrow.down")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                            
                        }
            
                        Text("Sign Up")
                            .font(.title)
                            .fontWeight(.semibold)
                        
                        Spacer(minLength: 0)

                        
                    }
                    .padding(.horizontal)
                    .padding(.vertical)
                    
                }
                .padding()
                .padding(.top, UIApplication
                                    .shared
                                    .connectedScenes
                                    .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                                    .first { $0.isKeyWindow }?.safeAreaInsets.top)

                .foregroundColor(.white)
                
            }
            .padding(.bottom)
            .background(Color("RenterText"))
            .clipShape(CustomCorner(corner: .bottomLeft, size: 65))
            
            ZStack {
                
                Color("RenterText")
                
                Color(.white)
                    .clipShape(CustomCorner(corner: .topRight, size: 65))
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(spacing: 20) {
                        
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
                        
                    }
                    .padding(.vertical)
                    .padding(.top, 30)
                    
                    Spacer(minLength: 0)
                    
                }
                .clipShape(CustomCorner(corner: .topRight, size: 65))
                
            }
            
        }
        .navigationBarHidden(true)
        .background(.white).ignoresSafeArea(.all, edges: .all)
        .ignoresSafeArea(.all, edges: .all)
        
    }
}


struct CustomCorner: Shape {
    
    var corner: UIRectCorner
    var size: CGFloat
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii:  CGSize(width: size, height: size))
        
        return Path(path.cgPath)
        
    }
    
}
