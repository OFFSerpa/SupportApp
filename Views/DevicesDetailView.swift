//
//  DevicesDetailView.swift
//  SupportApp
//
//  Created by Vinicius Serpa on 16/08/23.
//

import SwiftUI

struct DevicesDetailView: View {
    
    @State var sheetShow: Bool = false
    
    @Environment(\.defaultMinListRowHeight) var rowHeight
    
    var body: some View {
        ScrollView{
            Image("Iphone")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 80)
            Text("iPhone do Vinícius")
                .font(.title2)
                .fontWeight(.semibold)
            Text("This iPhone 13")
                .foregroundColor(.secondary)
            Text("Limited Warranty")
                .foregroundColor(.secondary)
            Button{
                sheetShow = true
            } label: {
                Text("Device details")
            }
            
            HStack{
                Text("Support Topics")
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
            }
            .padding()
            
            SupportBar(color: .white)
            
            SupportToolsDeviceDetailList(supportTools: SupportToolsViewModel())
                .frame(height: rowHeight * 13.5 + 70, alignment: .top)
                .scrollDisabled(true)
            
            HStack{
                Text("Support for Services")
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
            }
            .padding()
            
            ServiceDetailCardScrollView(serviceDetailViewModel: ServiceViewModel())
            
        }
        .background(Color("background"))
    }
}

struct DevicesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DevicesDetailView()
    }
}
