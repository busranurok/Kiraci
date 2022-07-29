//
//  ChangeLanguageView.swift
//  Kiraci
//
//  Created by BusranurOK on 23.07.2022.
//

import SwiftUI

struct ChangeLanguageView: View {
    
    @State var selectedLanguage: Language = Language.english
       
    var body: some View {
        
        VStack {
            
            List {
                
                ForEach(Language.allCases, id: \.self){ language in
                    
                    Button {
                        
                        self.selectedLanguage = language
                        
                    } label: {
                        
                        HStack {
                            
                            Image(language.flag)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 30, height: 30)
                                .clipShape(Circle())
                                .shadow(radius: 5)
                            
                            Text(language.rawValue)
                            
                            Spacer()
                            
                            ZStack {
                                
                                Circle().fill(self.selectedLanguage == language ? Color.green : Color.black.opacity(0.2)).frame(width: 18, height: 18)
                                
                                if self.selectedLanguage == language {
                                    
                                    Circle().stroke(Color.green.opacity(0.5), lineWidth: 4)
                                        .frame(width: 25, height: 25)
                                    
                                }
                                
                            }

                        }
                        .foregroundColor(.black)
                    }
                    .padding(.top)
                }
                
            }
            .listStyle(.plain)
            
        }
        .navigationTitle("Change Language")
    }
}
