//
//  CodableBundleExtension.swift
//  E-Commerce-Swift-UI
//
//  Created by Sabri Çetin on 17.04.2025.
//

import Foundation

extension Bundle {
    
    
    func decode<T: Codable>(_ file: String) -> T {
        
        guard let url = self.url(forResource: file, withExtension: "") else {
            fatalError("Yol Bulunamadı")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError( "Yükelemede Hata Oldu")
        }
        
        let decoder = JSONDecoder()
        
        guard let decodeData = try? decoder.decode(T.self, from: data) else {
            print("Decode Edilemedi")
            fatalError()
        }
        
        return decodeData
        
    }
}

