//
//  IDAppleModel.swift
//  SupportApp
//
//  Created by André Arteca on 16/08/23.
//

import Foundation

struct IDApple: Identifiable, Equatable {
    let id = UUID()
    let email: String
    let desc: String?
    
//    init(email: String, desc: String?) {
//        self.email = email
//        self.desc = desc
//    }
    init(email: String, desc: String? = nil) {
        self.email = email
        self.desc = desc
    }
}
