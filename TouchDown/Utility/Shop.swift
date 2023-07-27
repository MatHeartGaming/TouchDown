//
//  Shop.swift
//  TouchDown
//
//  Created by Matteo Buompastore on 27/07/23.
//

import Foundation

class Shop : ObservableObject {
    
    @Published var showingProduct = false
    @Published var selectedProduct : Product? = nil
    
}
