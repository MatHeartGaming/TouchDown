//
//  ContentView.swift
//  TouchDown
//
//  Created by Matteo Buompastore on 26/07/23.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    
    
    //MARK: - BODY
    var body: some View {
        ZStack {
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
                        
                        FooterView()
                            .padding(.horizontal)
                    } //: VSTACK
                } //: SCROLL
                
                
                
            } //: VSTACK
            .background(colorBackground.ignoresSafeArea())
        } //: ZSTACK
        .ignoresSafeArea()
    }
}

//MARK: - BODY
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}