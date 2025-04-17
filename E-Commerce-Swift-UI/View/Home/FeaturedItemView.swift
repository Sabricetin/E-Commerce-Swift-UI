//
//  FeaturedItemView.swift
//  E-Commerce-Swift-UI
//
//  Created by Sabri Çetin on 17.04.2025.
//

import SwiftUI

struct FeaturedItemView: View {
    
    //MARK: -Property
    let player: Player
    
    //MARK: -Body
    var body: some View {
        
        Image(player.image)
            .resizable()
            .scaleEffect()
            .cornerRadius(12)
        
    }
}

#Preview {
    FeaturedItemView(player: players[0])
}
