//
//  SheetView.swift
//  SupportApp
//
//  Created by André Arteca on 15/08/23.
//

import SwiftUI

struct DevicesSheetView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State public var devices: [DeviceModel]
    
    var body: some View {
        NavigationStack{
            List(){
                Section {
                    ForEach(devices) { device in
                        NavigationLink {
                            Text(device.name)
                        } label: {
                            HStack{
                                Image(device.Image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(maxHeight: 35)
                                VStack(alignment: .leading){
                                    Text(device.name)
                                    Text(device.description)
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                }
                                .padding(.leading)
                            }
                        }
                    }
                    
                }
            footer: {
                Text("Você pode gerenciar seus dispositivos em Ajustes. Para gerenciar AirPods, acesse buscar.")
                    .font(.caption)
            }
              
            }
            .listStyle(.inset)
                .navigationTitle("Meus Dispositivos")
                .toolbar{
                    ToolbarItem{
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "xmark.circle.fill")
                                .font(.title2)
                                .foregroundColor(.secondary)
                        }

                    }
                }
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        DevicesSheetView(devices: [
            DeviceModel(name: "iPhone", description: "This iPhone 13", Image: "Iphone"),
            DeviceModel(name: "MacBook Pro", description: "MacBook Pro 14'", Image: "macbook"),
            DeviceModel(name: "MacBook Air", description: "MacBook Air 13'", Image: "Iphone"),
            DeviceModel(name: "AirPods Pro", description: "Paired AirPods Pro", Image: "Iphone"),
            DeviceModel(name: "Apple Watch", description: "Paired Apple Watch Series 8", Image: "Iphone")

        ])
    }
}
