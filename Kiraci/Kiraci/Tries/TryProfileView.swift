//
//  ProfileView.swift
//  Kiraci
//
//  Created by BusranurOK on 24.07.2022.
//

import SwiftUI

struct TryProfileView: View {
    
    @State var index = 0
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                VStack(spacing: 0 ) {

                    /*Rectangle()
                        .fill(.red)
                        .frame(width: 100, height: 3)*/
                    
                    Image("femaleavatar")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.renterText, lineWidth: 3))
                        .padding(.top, 6)
                        .padding(.bottom, 4)
                        .padding(.horizontal, 8)
                    
                }
                
                VStack(alignment: .leading, spacing: 12) {
                    
                    Text("Büşra Nur OK")
                        .font(.title)
                        .foregroundColor(.black.opacity(0.8))
                    
                    Text("iOS Developer")
                        .foregroundColor(.black.opacity(0.7))
                        .padding(.top, 8)
                    
                    Text("busranurok@gmail.com")
                        .foregroundColor(.black.opacity(0.7))
                    
                }
                .padding(.leading, 20)
                
                Spacer(minLength: 0)
                
            }
            .padding(.horizontal, 20)
            .padding(.top, 10)
            
            // Tab Items...
            HStack {
                
                Button {
                    
                    self.index = 0
                    
                } label: {
                    
                    Text("Experiences")
                        .foregroundColor(self.index == 0 ? Color.gray.opacity(0.5) : .green)
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 0 ? Color(.white) : Color.clear)
                        .cornerRadius(10)
                    
                }
                
                Spacer(minLength: 0)
                
                Button {
                    
                    self.index = 1
                    
                } label: {
                    
                    Text("Rates")
                        .foregroundColor(self.index == 1 ? Color.gray.opacity(0.5) : .green)
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 1 ? Color(.white) : Color.clear)
                        .cornerRadius(10)
                    
                }
                
                Spacer(minLength: 0)
                
                Button {
                    
                    self.index = 2
                    
                } label: {
                    
                    Text("Charts")
                        .foregroundColor(self.index == 2 ? Color.gray.opacity(0.5) : .green)
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 2 ? Color(.white) : Color.clear)
                        .cornerRadius(10)
                    
                }
                
            }
            .padding(.horizontal, 8)
            .padding(.vertical, 5)
            .background(.black)
            .cornerRadius(8)
            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 8, y: 8)
            .shadow(color: Color.white.opacity(0.1), radius: 5, x: -8, y: -8)
            .padding(.horizontal)
            .padding(.top, 25)
            
            // Cards...
            HStack(spacing: 20) {
                
                VStack(spacing: 12) {
                    
                    Image("femaleavatar")
                        .resizable()
                        .frame(width: 80, height: 80)
                    
                    Text("Twitter")
                        .font(.title)
                    
                    Text("UI Designer")
                        .foregroundColor(.blue)
                    
                    Text("1 Year")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                }
                .padding(.vertical)
                // half screen - spacing - two side paddings = 60
                .frame(width: (UIScreen.main.bounds.width - 60) / 2)
                .background(Color.cardViewBackground)
                .cornerRadius(15)
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 8, y: 8)
                .shadow(color: Color.white.opacity(0.1), radius: 5, x: -8, y: -8)
                
                VStack(spacing: 12) {
                    
                    Image("femaleavatar")
                        .resizable()
                        .frame(width: 80, height: 80)
                    
                    Text("Apple")
                        .font(.title)
                    
                    Text("UI/UX Designer")
                        .foregroundColor(.blue)
                    
                    Text("3 Year")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                }
                .padding(.vertical)
                // half screen - spacing - two side paddings = 60
                .frame(width: (UIScreen.main.bounds.width - 60) / 2)
                .background(Color.cardViewBackground)
                .cornerRadius(15)
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 8, y: 8)
                .shadow(color: Color.white.opacity(0.1), radius: 5, x: -8, y: -8)
                
            }
            .padding(.top, 20)
            
            HStack(spacing: 20) {
                
                VStack(spacing: 12) {
                    
                    Image("femaleavatar")
                        .resizable()
                        .frame(width: 80, height: 80)
                    
                    Text("Twitter")
                        .font(.title)
                    
                    Text("UI Designer")
                        .foregroundColor(.blue)
                    
                    Text("1 Year")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                }
                .padding(.vertical)
                // half screen - spacing - two side paddings = 60
                .frame(width: (UIScreen.main.bounds.width - 60) / 2)
                .background(Color.cardViewBackground)
                .cornerRadius(15)
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 8, y: 8)
                .shadow(color: Color.white.opacity(0.1), radius: 5, x: -8, y: -8)
                
                VStack(spacing: 12) {
                    
                    Image("femaleavatar")
                        .resizable()
                        .frame(width: 80, height: 80)
                    
                    Text("Apple")
                        .font(.title)
                    
                    Text("UI/UX Designer")
                        .foregroundColor(.blue)
                    
                    Text("3 Year")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                }
                .padding(.vertical)
                // half screen - spacing - two side paddings = 60
                .frame(width: (UIScreen.main.bounds.width - 60) / 2)
                .background(Color.cardViewBackground)
                .cornerRadius(15)
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 8, y: 8)
                .shadow(color: Color.white.opacity(0.1), radius: 5, x: -8, y: -8)
                
            }
            .padding(.top, 20)
            
            Spacer(minLength: 0)
            
        }
        .navigationTitle("")
    }
}

