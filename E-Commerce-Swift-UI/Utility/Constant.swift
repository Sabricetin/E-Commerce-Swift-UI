//
//  Constant.swift
//  E-Commerce-Swift-UI
//
//  Created by Sabri Çetin on 17.04.2025.
//

import Foundation
import SwiftUI

//DATA

let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")


let sampleProduct: Product = products[8]

//Color

let colorBackground: Color = Color("colorBackground")
let colorGray : Color = Color(.systemGray4)

//Layout

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible() , spacing : rowSpacing), count: 2)
}

//UX

let feedBack = UIImpactFeedbackGenerator(style: .medium)
