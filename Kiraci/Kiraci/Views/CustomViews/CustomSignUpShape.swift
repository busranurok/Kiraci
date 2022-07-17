//
//  CustomSignUpShape.swift
//  Kiraci
//
//  Created by BusranurOK on 17.07.2022.
//

import SwiftUI

struct CustomSignUpShape: Shape {
    
    var yOffSet: CGFloat = 0.5
    
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        
        path.addCurve(to: CGPoint(x: rect.minX, y: rect.maxY),
                      control1: CGPoint(x: rect.maxX * 0.75, y: rect.maxY - (rect.maxY * yOffSet)),
                      control2: CGPoint(x: rect.maxX * 0.25, y: rect.maxY + (rect.maxY * yOffSet)))
        
                      path.closeSubpath()
                      
                      return path
                      
    }
    
}
