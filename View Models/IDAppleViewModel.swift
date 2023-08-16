//
//  IDAppleViewModel.swift
//  SupportApp
//
//  Created by André Arteca on 16/08/23.
//

import Foundation

class IDAppleViewModel: ObservableObject {
    
    @Published var id: [IDApple] = [
        IDApple(email: "andre.arteca1@gmail.com", desc: "Sessão Iniciada"),
        IDApple(email: "fulano.silva@gmail.com", desc: "Sessão Iniciada"),
        IDApple(email: "Outro ID Apple")
    ]
}
