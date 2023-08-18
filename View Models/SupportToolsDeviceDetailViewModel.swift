//
//  SupportToolsDeviceDetailViewModel.swift
//  SupportApp
//
//  Created by André Arteca on 18/08/23.
//

import Foundation

class SupportToolsViewModel: ObservableObject{
    @Published var supportTools: [SupportToolsModel] = [
        SupportToolsModel(name: "Reparos e Danos físicos", Image: "Iphone"),
        SupportToolsModel(name: "Desempenho do dispositivo", Image: "Iphone"),
        SupportToolsModel(name: "Assinaturas e compras", Image: "Iphone"),
        SupportToolsModel(name: "Compras na Apple Store", Image: "Iphone"),
        SupportToolsModel(name: "Senhas e segurança", Image: "Iphone"),
        SupportToolsModel(name: "Atualização, backup e restauração", Image: "Iphone"),
        SupportToolsModel(name: "Mais", Image: "Iphone"),
        
        
    ]
}
