//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Matteo Buompastore on 27/07/23.
//

import SwiftUI

struct ProductDetailView: View {
    
    //MARK: - PROPERTIES
    @EnvironmentObject var shop : Shop
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // HEADER
            HeaderDetailView()
                .padding(.horizontal)
            
            // DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
        
            // DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0) {
                
                // RATINGS + SIZES
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                    .padding(.horizontal)
                    .zIndex(2)
                
                // DESCRIPTION
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                .padding(.horizontal)
                .background(
                    Color.white
                        .clipShape(CustomShape())
                        .padding(.top, -105)
                        .edgesIgnoringSafeArea(.bottom)
                ) //: SCROLL
                
                // QUANTITY + FAVOURITE
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                    .background(.white)
                
                // ADD TO CART
                AddToCartDetailView()
                    .padding(.bottom, 20)
                    .padding(.horizontal)
                    .background(.white)
                
                Spacer()
            }
            
            
        } //: VSTACK
        .zIndex(0)
        .ignoresSafeArea()
        .background(
            Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
                .ignoresSafeArea()
        )
    }
}


//MARK: - PREVIEW
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.sizeThatFits)
            .environmentObject(Shop())
            //.padding()
    }
}
