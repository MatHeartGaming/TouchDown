//
//  navigationBarDetailView.swift
//  TouchDown
//
//  Created by Matteo Buompastore on 27/07/23.
//

import SwiftUI

struct NavigationBarDetailView: View {
    
    //MARK: - PROPERTIES
    @EnvironmentObject var shop : Shop
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Button {
                withAnimation(.easeIn) {
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                    haptics.impactOccurred()
                }
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }
        } //: HSTACK
    }
}


//MARK: - PREVIEW
struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
            .environmentObject(Shop())
    }
}
