//
//  ContentView.swift
//  TouchDown
//
//  Created by Matteo Buompastore on 26/07/23.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    @EnvironmentObject var shop : Shop
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 0) {
                            FeaturedTabView()
                                .frame(height: 240)
                                .padding(.vertical, 20)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15) {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                                haptics.impactOccurred()
                                            }
                                        } //: PRODUCT ITEM
                                } //: LOOP
                            } //: GRID
                            .padding()
                            
                            Group {
                                TitleView(title: "Brands")
                                BrandGridView()
                            } //: BRANDS SECTION
                            
                            FooterView()
                                .padding(.horizontal, 15)
                        } //: VSTACK
                    } //: SCROLL
                    
                    
                    
                } //: VSTACK
                .background(colorBackground.ignoresSafeArea())
            } else {
                ProductDetailView()
            }
        } //: ZSTACK
        .ignoresSafeArea()
    }
}

//MARK: - BODY
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
            .environmentObject(Shop())
    }
}
