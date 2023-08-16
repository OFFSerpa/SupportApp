//
//  SheetView.swift
//  SupportApp
//
//  Created by André Arteca on 15/08/23.
//

import SwiftUI

struct DevicesSheetView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @StateObject public var devices: DeviceViewModel
    
    
    
    var body: some View {
        NavigationStack{
            List(){
                Section {
                    ForEach(devices.devices) { device in
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
        DevicesSheetView(devices: DeviceViewModel())
    }
}
