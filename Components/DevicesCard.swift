//
//  DevicesCard.swift
//  SupportCopy
//
//  Created by Vinicius Serpa on 14/08/23.
//

import SwiftUI

struct DevicesCard: View {
    
  
    
    let device: DeviceModel
    
    var body: some View {
        
        NavigationLink {
            DeviceView()
        } label: {
            HStack{
                VStack{
                    Image(device.Image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.top)
                    
                    Text(device.name)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Text"))
                    Text(device.description)
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
    
    struct DevicesCard_Previews: PreviewProvider {
        
        static var device1 = DeviceModel(name: "iPhone", description:" This iPhone 13", Image: "Iphone")
        static var previews: some View {
            DevicesCard(device: device1)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
