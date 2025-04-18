//
//  ProductDetailView.swift
//  E-Commerce-Swift-UI
//
//  Created by Sabri Çetin on 18.04.2025.
//

import SwiftUI

struct ProductDetailView: View {
    
    //MARK: Property
    @EnvironmentObject var shop: Shop
    
    
    //MARK: -Body
    var body: some View {
        VStack{
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top , 44)

            HeaderDetailView()
                .padding(.horizontal)
            
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            VStack(alignment: .center, spacing: 0) {
                RatingsSizesDetailView()
                    .padding(.top , -20)
                    .padding(.bottom , 10)
                
                ScrollView(.vertical , showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                QuantityFavouriteDetailView()
                    .padding(.vertical , 10)
                
                AddToCartDetailView()
                    .padding()
            }
            .padding(.horizontal)
            .background(Color.white.clipShape(CustomShape())).padding(.top , -105)
            
            
        } .zIndex(0)
            .ignoresSafeArea(.all, edges: .all)
            .background(
                Color(
                    red: shop.selectedProduct?.red ?? sampleProduct.red,
                    green: shop.selectedProduct?.green ?? sampleProduct.green ,
                    blue: shop.selectedProduct?.blue ?? sampleProduct.blue
                ).ignoresSafeArea(.all , edges: .all)
            )
    }
}

#Preview {
    ProductDetailView()
        .environmentObject(Shop())
}
