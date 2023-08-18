//
//  SupportToolsDeviceDetailList.swift
//  SupportApp
//
//  Created by Vinicius Serpa on 16/08/23.
//

import SwiftUI

struct SupportToolsDeviceDetailList: View {
    
    @StateObject var supportTools: SupportToolsViewModel
    var body: some View {
        NavigationStack{
            List(){
                Section{
                    ForEach(supportTools.supportTools) { index in
                        SupportToolsDetailDeviceCards(supportToolsDevice: index )
                    }
                    NavigationLink {
                        SupportView()
                    } label: {
                        HStack(alignment: .center){
                            
                            Image(systemName: "ellipsis.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .padding(.all)
                                .padding(.leading)

                            Text("More")
                                .font(.title2)
                            Spacer()
                        }
                        .frame(width: 360, height: 60)
                        .cornerRadius(6)
                    }
                }
               

            }
        }
    }
}

struct SupportToolsDeviceDetailList_Previews: PreviewProvider {
    static var previews: some View {
        SupportToolsDeviceDetailList(supportTools: SupportToolsViewModel())
    }
}
