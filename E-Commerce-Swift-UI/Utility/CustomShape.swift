//
//  CustomShape.swift
//  E-Commerce-Swift-UI
//
//  Created by Sabri Çetin on 18.04.2025.
//

import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft , .topRight], cornerRadii: CGSize(width: 35, height: 35))
        return Path(path.cgPath)
    }
    
   
    
}

#Preview {
    CustomShape()
}
