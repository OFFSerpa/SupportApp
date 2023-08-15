//
//  SeviceViewModel.swift
//  SupportCopy
//
//  Created by Vinicius Serpa on 15/08/23.
//

import Foundation

class ServiceViewModel: ObservableObject{
    @Published var services: [ServiceModel] = [
        ServiceModel(name: "iCloud+", description: "100,71 GB of 200 GB Used", Image: "Iphone"),
        ServiceModel(name: "Apple Music", description: "", Image: "macbook"),
        ServiceModel(name: "Apple Arcade", description: "", Image: "Iphone"),
        
        
    ]
}
