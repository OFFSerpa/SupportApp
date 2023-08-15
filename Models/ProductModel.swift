//
//  ProductsModel.swift
//  SupportCopy
//
//  Created by Vinicius Serpa on 15/08/23.
//

import Foundation

struct ProductsModel: Identifiable, Codable {
    let id: String
    let name: String
    let Image: String
    
    init(id: String = UUID().uuidString, name: String, Image: String) {
        self.id = UUID().uuidString
        self.name = name
        self.Image = Image
    }
    func updateCompletion() -> ProductsModel{
        return ProductsModel(id: id,name: name,  Image: Image)
    }
    
}
