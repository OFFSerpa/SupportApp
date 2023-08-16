//
//  SheetView.swift
//  SupportApp
//
//  Created by André Arteca on 15/08/23.
//

import SwiftUI

struct ServiceSheetView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State public var services: [ServiceModel]
    
    var body: some View {
        NavigationStack{
            List(){
                Section {
                    ForEach(services) { service in
                        
                        NavigationLink {
                            Text(service.name)
                        } label: {
                            HStack{
                                Image(service.Image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(maxHeight: 35)
                                VStack(alignment: .leading){
                                    Text(service.name)
                                  
                                }
                                .padding(.leading)
                               
                            }
                        }
                        
                    }
                    
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

struct ServiceSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ServiceSheetView(services: [
            ServiceModel(name: "iCloud+", description: "100,71 GB of 200 GB Used", Image: "Iphone"),
            ServiceModel(name: "Apple Music", description: "", Image: "macbook"),
            ServiceModel(name: "Apple Arcade", description: "", Image: "Iphone"),
            
            
        ])
    }
}
