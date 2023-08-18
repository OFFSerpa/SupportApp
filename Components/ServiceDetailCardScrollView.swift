//
//  ServiceDetailCardScrollView.swift
//  SupportApp
//
//  Created by Vinicius Serpa on 16/08/23.
//

import SwiftUI

struct ServiceDetailCardScrollView: View {
    @StateObject var serviceDetailViewModel:  ServiceViewModel
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 10) {
                ForEach(0..<serviceDetailViewModel.services.count) { index in
                    ServiceDetailCard(serviceDetail: serviceDetailViewModel.services[index])
                }
            }
            .padding([.leading], 20)

        }
        
    }

}

struct ServiceDetailCardScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ServiceDetailCardScrollView(serviceDetailViewModel: ServiceViewModel())
    }
}
