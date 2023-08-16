//
//  ProductsViewModel.swift
//  SupportCopy
//
//  Created by Vinicius Serpa on 15/08/23.
//

import Foundation

class ProductViewModel: ObservableObject{
    @Published var products: [ProductsModel] = [
        ProductsModel(name: "AirPods", Image: "airpods"),
        ProductsModel(name: "AirTag", Image: "Iphone"),
        ProductsModel(name: "App Store", Image: "Iphone"),
        ProductsModel(name: "Apple Fitness", Image: "Iphone"),
        ProductsModel(name: "Apple ID", Image: "Iphone"),
        ProductsModel(name: "Apple One", Image: "Iphone"),
        ProductsModel(name: "Apple Pay", Image: "Iphone"),
        ProductsModel(name: "Apple Pencil", Image: "Iphone"),
        ProductsModel(name: "Apple TV", Image: "Iphone"),
        ProductsModel(name: "Apple TV+", Image: "Iphone"),
        ProductsModel(name: "Apple Watch", Image: "Iphone"),
        ProductsModel(name: "Beats by Apple", Image: "Iphone"),
        ProductsModel(name: "Billing & Subscriptions", Image: "Iphone"),
        ProductsModel(name: "iPad", Image: "Iphone")
 
     
    ]
    @Published var products2: [ProductsModel] = [
    ProductsModel(name: "Iphone", Image: "Iphone")
    ]
    
}
