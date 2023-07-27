//
//  QuantityFavouriteDetailView.swift
//  TouchDown
//
//  Created by Matteo Buompastore on 27/07/23.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    
    //MARK: - PROPERTIES
    @State private var counter : Int = 0
    
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
                if counter > 0 {
                    counter -= 1
                    haptics.impactOccurred()
                }
            } label: {
                Image(systemName: "minus.circle")
                    .opacity(counter <= 0 ? 0.2 : 1)
            }
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button {
                if counter < 100 {
                    counter += 1
                    haptics.impactOccurred()
                }
            } label: {
                Image(systemName: "plus.circle")
                    .opacity(counter >= 100 ? 0.2 : 1)
            }
            
            Spacer()

            Button {
                haptics.impactOccurred(intensity: 1)
            } label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.red)
            }
            

        } //: HSTACK
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}


//MARK: - PREVIEW
struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
