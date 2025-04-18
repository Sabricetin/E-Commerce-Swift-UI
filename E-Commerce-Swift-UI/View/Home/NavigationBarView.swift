//
//  NavigationBarView.swift
//  E-Commerce-Swift-UI
//
//  Created by Sabri Çetin on 17.04.2025.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: -Property
    
    @State private var isAnimated: Bool = false
    
    //MARK: -Body
    var body: some View {
        HStack{
            Button(action: {}) {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }
            Spacer()
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear {
                    withAnimation(.easeInOut(duration: 0.5)){
                        isAnimated.toggle()
                    }
                }
            Spacer()
            Button(action: {}) {
                ZStack{
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    
                    Circle()
                        .fill(.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            }
        }
    }
}

#Preview {
    NavigationBarView()
}
