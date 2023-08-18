//
//  SupportToolsDeviceDetailModel.swift
//  SupportApp
//
//  Created by Vinicius Serpa on 16/08/23.
//

import Foundation

struct SupportToolsModel: Identifiable, Codable{
    let id: String
    let name: String
    let Image: String
    
    init(id: String = UUID().uuidString, name: String, Image: String) {
        self.id = UUID().uuidString
        self.name = name
        self.Image = Image
    }
    
    func updateCompletion() -> SupportToolsModel{
        return SupportToolsModel(id: id,name: name, Image: Image)
    }
    
}
