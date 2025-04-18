//
//  Shop.swift
//  E-Commerce-Swift-UI
//
//  Created by Sabri Çetin on 18.04.2025.
//

import Foundation


class Shop: ObservableObject {
    
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product?
}
