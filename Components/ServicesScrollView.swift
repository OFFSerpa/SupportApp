//
//  ServicesScrollVIew.swift
//  SupportCopy
//
//  Created by Vinicius Serpa on 15/08/23.
//

import SwiftUI

struct ServicesScrollVIew: View {
    
    @StateObject var serviceViewModel:  ServiceViewModel
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack {
                ForEach(0..<serviceViewModel.services.count) { index in
                    ServiceCard(service: serviceViewModel.services[index])
                }
                .padding([.leading], 20)
            }
        }
        
    }
}

struct ServicesScrollVIew_Previews: PreviewProvider {
    static var previews: some View {
        ServicesScrollVIew(serviceViewModel: ServiceViewModel())
    }
}
