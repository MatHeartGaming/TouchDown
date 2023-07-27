//
//  ProductItemView.swift
//  TouchDown
//
//  Created by Matteo Buompastore on 27/07/23.
//

import SwiftUI

struct ProductItemView: View {
    
    //MARK: - PROPERTIES
    let product : Product
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            
            // PHOTO
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } //: ZSTACK
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            // NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            // PRICE
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
            
        } //: VSTACK
    }
}



//MARK: - PREVIEW
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
