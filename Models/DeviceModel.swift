//
//  DeviceModel.swift
//  SupportCopy
//
//  Created by Vinicius Serpa on 14/08/23.
//

import Foundation

struct DeviceModel: Identifiable, Codable {
    let id: String
    let name: String
    let description: String
    let Image: String
    
    init(id: String = UUID().uuidString, name: String, description: String, Image: String) {
        self.id = UUID().uuidString
        self.name = name
        self.description = description
        self.Image = Image
    }
    func updateCompletion() -> DeviceModel{
        return DeviceModel(id: id,name: name, description: description, Image: Image)
    }
    
}

