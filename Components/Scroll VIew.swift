//
//  Scroll View.swift
//  SupportCopy
//
//  Created by Vinicius Serpa on 15/08/23.
//

import SwiftUI

struct Scroll_View: View {
    
    @StateObject var deviceViewModel: DeviceViewModel
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 10) {
                ForEach(0..<deviceViewModel.devices.count) { index in
                    DevicesCard(device: deviceViewModel.devices[index])
                }
            }
            .padding([.leading], 20)

        }
        
    }
}

struct Scroll_View_Previews: PreviewProvider {
    static var previews: some View {
        Scroll_View(deviceViewModel: DeviceViewModel())
    }
}
