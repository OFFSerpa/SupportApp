//
//  ServiceDetailCard.swift
//  SupportApp
//
//  Created by Vinicius Serpa on 16/08/23.
//

import SwiftUI

struct ServiceDetailCard: View {
    let serviceDetail: ServiceModel
    
    var body: some View {
        NavigationLink {
            DeviceView()
        } label: {
            HStack{
                VStack{
                    Image(serviceDetail.Image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.top)
                    
                    Text(serviceDetail.name)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Text"))
                        .padding(.bottom, 10)
                    
                }
            }
            .foregroundColor(.clear)
            .frame(width: 160, height: 110)
            .background(Color("inverted"))
            .cornerRadius(6)
        }
    }

}

struct ServiceDetailCard_Previews: PreviewProvider {
    
    static var serviceDetail1 = ServiceModel(name: "iCloud+",description:"Iphone",  Image: "Iphone")

    
    static var previews: some View {
        ServiceDetailCard(serviceDetail: serviceDetail1)
    }
}
