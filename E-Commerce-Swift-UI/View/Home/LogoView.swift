//
//  LogoView.swift
//  E-Commerce-Swift-UI
//
//  Created by Sabri Çetin on 17.04.2025.
//

import SwiftUI

struct LogoView: View {
    
    //MARK: -Bodey
    var body: some View {
        HStack (spacing: 4){
            
            Text("asagı"
                .uppercased())
            .font(.title3)
            .fontWeight(.black)
            .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .frame(width: 30, height: 30 , alignment: .center)
            
            Text("tıkla"
                .uppercased())
            .font(.title3)
            .fontWeight(.black)
            .foregroundColor(.black)
                
            
        }
    }
}

#Preview {
    LogoView()
}
