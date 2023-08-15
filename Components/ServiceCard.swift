//
//  ServiceCard.swift
//  SupportCopy
//
//  Created by Vinicius Serpa on 15/08/23.
//

import SwiftUI

struct ServiceCard: View {
    
    let service: ServiceModel
    
    var body: some View {
        NavigationLink {
            DeviceView()
        } label: {
            HStack{
                VStack{
                    Image(service.Image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.top)
                    
                    Text(service.name)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Text"))
                    Text(service.description)
                        .font(Font.custom("Inter", size: 16))
                        .foregroundColor(.secondary)
                        .padding(.bottom, 20)
                    
                }
            }
            .foregroundColor(.clear)
            .frame(width: 160, height: 160)
            .background(Color("background"))
            .cornerRadius(6)
        }
    }
}

struct ServiceCard_Previews: PreviewProvider {
    
    static var service1 = ServiceModel(name: "iCloud+", description:" This iPhone 13", Image: "Iphone")

    
    static var previews: some View {
        ServiceCard(service: service1)
    }
}
