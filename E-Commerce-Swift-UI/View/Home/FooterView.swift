//
//  FooterView.swift
//  E-Commerce-Swift-UI
//
//  Created by Sabri Çetin on 17.04.2025.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("Biz en iyi kasklari ve en uygun fiyata sizlere sunuyoruz")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundStyle(.gray)
                .layoutPriority(0)
            
            Text("Tum haklar @SABRİ ÇETİN\n Tarafindan saklidir")
        }
        .padding()
    }
}

#Preview {
    FooterView()
}
