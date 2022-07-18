//
//  CloredGroupBox.swift
//  Kiraci
//
//  Created by BusranurOK on 18.07.2022.
//

import Foundation
import SwiftUI

struct ColoredGroupBox: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            HStack {
                configuration.label
                    .font(.headline)
                Spacer()
            }
            
            configuration.content
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(Color.cardViewBackground))
    }
}
