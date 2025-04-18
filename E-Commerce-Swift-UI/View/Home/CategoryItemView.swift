//
//  CategoryItemView.swift
//  E-Commerce-Swift-UI
//
//  Created by Sabri Çetin on 17.04.2025.
//
import SwiftUI

struct CategoryItemView: View {
    
    //MARK: Property
    let category: Category
    
    //MARK: -Body
    var body: some View {
        Button(action: {}) {
            HStack(alignment: .center, spacing: 12) {
                Image(category.image)
                    .renderingMode(.template)
                    .scaledToFit()
                    .frame(width: 45, height: 45, alignment: .center)
                    .foregroundColor(.gray) // Daha dikkat çekici bir renk
        
                Text(category.name.uppercased())
                    .font(.headline) // Modern bir font
                    .fontWeight(.semibold)
                    .foregroundColor(.primary) // Yazı rengi daha canlı
            
                Spacer()
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Color.white)
            .cornerRadius(12)
            .shadow(color: .gray.opacity(0.3), radius: 8, x: 0, y: 4) // Hafif gölge ekleyerek derinlik kazandır
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
            )
            .scaleEffect(1.05) // Hover efekti için hafif büyütme
            .animation(.easeInOut(duration: 0.2), value: 1)
        }
        .buttonStyle(PlainButtonStyle()) // Buton stilini değiştirme
    }
}

#Preview {
    CategoryItemView(category: categories[0])
}
