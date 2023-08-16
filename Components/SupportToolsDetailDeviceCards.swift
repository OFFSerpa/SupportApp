//
//  SupportToolsDetailDeviceCards.swift
//  SupportApp
//
//  Created by Vinicius Serpa on 16/08/23.
//

import SwiftUI

struct SupportToolsDetailDeviceCards: View {
    
   let supportToolsDevice: SupportToolsModel
    
    var body: some View {
        HStack(alignment: .center){
         
            Image(supportToolsDevice.Image)
                .resizable()
                .scaledToFit()
                .padding(.all)
            Text(supportToolsDevice.name)
            Spacer()
            Image(systemName: "chevron.right")
            
            Spacer()
        }
        .frame(width: 360, height: 60)
        .cornerRadius(6)
    }
}

struct SupportToolsDetailDeviceCards_Previews: PreviewProvider {
    
    static var support1 = SupportToolsModel(name: "Repairs & Physical Damage", Image: "airpods")

    
    static var previews: some View {
        SupportToolsDetailDeviceCards(supportToolsDevice: support1)
    }
}
