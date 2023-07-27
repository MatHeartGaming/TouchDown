//
//  Constants.swift
//  TouchDown
//
//  Created by Matteo Buompastore on 26/07/23.
//

import SwiftUI

//DATA
let players : [Player] = Bundle.main.decode("player.json")
let categories : [Category] = Bundle.main.decode("category.json")
let products : [Product] = Bundle.main.decode("product.json")
let brands : [Brand] = Bundle.main.decode("brand.json")
let sampleProduct : Product = products[0]

//COLOR
let colorBackground = Color("ColorBackground")
let colorGray = Color(UIColor.systemGray4)

//LAYOUT
let columnSpacing : CGFloat = 10
let rowSpacing : CGFloat = 10
var gridLayout : [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

//MARK: This won't work if put in the Constants file unfortunately!!
//let notchSize : CGFloat? = UIApplication.shared.windows.first?.safeAreaInsets.top

//UX
let haptics = UIImpactFeedbackGenerator(style: .medium)


//API
//IMAGE
//FONT
//STRING
//MISC
