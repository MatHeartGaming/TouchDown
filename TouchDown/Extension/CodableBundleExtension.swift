//
//  CodableBundleExtension.swift
//  TouchDown
//
//  Created by Matteo Buompastore on 27/07/23.
//

import Foundation

extension Bundle {
    
    func decode<T : Codable>(_ file : String) -> T {
        
        // 1. Locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in Bundle.")
        }
        
        // 2. Create a propety for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load file \(file) from Bundle.")
        }
        
        // 3. Create a decoder
        let decoder = JSONDecoder()
        
        // 4. Create a property for the decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) form Bundle.")
        }
        
        // 5. Return the ready-to-use data
        return decodedData
    }
    
}
