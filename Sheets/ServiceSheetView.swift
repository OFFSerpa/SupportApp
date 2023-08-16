//
//  SheetView.swift
//  SupportApp
//
//  Created by André Arteca on 15/08/23.
//

import SwiftUI

struct ServiceSheetView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @StateObject public var services = ServiceViewModel()
    
    var body: some View {
        NavigationStack{
            List(){
                Section {
                    ForEach(services.services) { service in
                        
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
        ServiceSheetView(services: ServiceViewModel())
    }
}
