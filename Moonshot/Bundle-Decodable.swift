//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Anna Busby on 02/01/2024.
//

import Foundation

//T is generic, we did have [String: Astronaut], but that only works for the astronaut file
extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in the bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) in the bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
            
        return loaded
        
    }
}
