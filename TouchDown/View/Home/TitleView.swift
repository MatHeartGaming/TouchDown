//
//  TitleView.swift
//  TouchDown
//
//  Created by Matteo Buompastore on 27/07/23.
//

import SwiftUI

struct TitleView: View {
    
    //MARK: - PROPERTIES
    let title : String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        } //: HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}


//MARK: - PREVIEW
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
