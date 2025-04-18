//
//  QuantityFavouriteDetailView.swift
//  E-Commerce-Swift-UI
//
//  Created by Sabri Çetin on 18.04.2025.
//
import SwiftUI

struct QuantityFavouriteDetailView: View {
    //MARK: -Property
    @State private var counter: Int = 0
    
    //MARK: -Body
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
                if counter > 0{
                    feedback.impactOccurred()
                    counter -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
            }
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button {
                if counter < 100{
                    feedback.impactOccurred()
                    counter += 1
                }
            } label: {
                Image(systemName: "plus.circle")
            }

            Spacer()
            
            Button {
                feedback.impactOccurred()
            } label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }

        }
        .font(.system(.title2, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

#Preview {
    QuantityFavouriteDetailView()
}
