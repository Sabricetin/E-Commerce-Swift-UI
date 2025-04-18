//
//  ContentView.swift
//  E-Commerce-Swift-UI
//
//  Created by Sabri Çetin on 17.04.2025.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: -Property
    @EnvironmentObject var shop : Shop
    let feedBack = UIImpactFeedbackGenerator(style: .medium)

    
    
    var body: some View {
        ZStack{
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack (spacing: 0){
                    NavigationBarView()
                        .padding(.horizontal , 15)
                        .padding(.bottom)
                        .padding(.top , 44)
                        .background(.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5 , x: 0 , y: 5)
                    
                    ScrollView(.vertical , showsIndicators: false) {
                        VStack(spacing: 0) {
                            VStack(spacing: 0) {
                                FeaturedTabView()
                                    .frame(height: UIScreen.main.bounds.width / 1.475)
                                    .padding(.vertical , 20)
                                
                                CategoryGridView()
                                
                                TitleView(title: "KASKLAR")
                                
                                LazyVGrid(columns: gridLayout, spacing: 15) {
                                    ForEach (products) { product in
                                           
                                        ProductItemView(product: product)
                                            .onTapGesture {
                                                feedBack
                                                    .impactOccurred()
                                                
                                                withAnimation(.easeOut) {
                                                    shop .selectedProduct = product
                                                    shop .showingProduct = true
                                                    
                                                }
                                            }
                                    }
                                }
                                
                                .padding(15)
                                
                                TitleView(title: "MARKALAR")
                                BrandGridView()
                                FooterView()
                                    .padding(.horizontal)
                                
                            }
                        }
                    }
                }
                
                .background(colorBackground.ignoresSafeArea(.all , edges: .all))
                
            } else {
                ProductDetailView()
                
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(Shop())
}
