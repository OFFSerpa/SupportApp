//
//  DeviceCardViewModel.swift
//  SupportCopy
//
//  Created by Vinicius Serpa on 14/08/23.
//

import Foundation


class DeviceViewModel: ObservableObject{
    @Published var devices: [DeviceModel] = [
        DeviceModel(name: "iPhone", description: "This iPhone 13", Image: "Iphone"),
        DeviceModel(name: "MacBook Pro", description: "MacBook Pro 14'", Image: "macbook"),
        DeviceModel(name: "MacBook Air", description: "MacBook Air 13'", Image: "Iphone"),
        DeviceModel(name: "AirPods Pro", description: "Paired AirPods Pro", Image: "Iphone"),
        DeviceModel(name: "Apple Watch", description: "Paired Apple Watch Series 8", Image: "Iphone")
        
    ]
}


