//
//  MoreProductsView.swift
//  SupportApp
//
//  Created by André Arteca on 16/08/23.
//

import SwiftUI

struct MoreProductsView: View {
    
    @State public var products: [ProductsModel]
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        NavigationStack{
                List(){
                    Section {
                        ForEach(products) { product in
                            
                            NavigationLink {
                                Text(product.name)
                            } label: {
                                HStack{
                                    Image(product.Image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(maxHeight: 35)
                                    VStack(alignment: .leading){
                                        Text(product.name)
                                      
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

struct MoreProductsView_Previews: PreviewProvider {
    static var previews: some View {
        MoreProductsView(products: [
            ProductsModel(name: "AirPods", Image: "Iphone"),
            ProductsModel(name: "AirTag", Image: "Iphone"),
            ProductsModel(name: "App Store", Image: "Iphone"),
            ProductsModel(name: "Apple Fitness", Image: "Iphone"),
            ProductsModel(name: "Apple ID", Image: "Iphone"),
            ProductsModel(name: "Apple One", Image: "Iphone"),
            ProductsModel(name: "Apple Pay", Image: "Iphone"),
            ProductsModel(name: "Apple Pencil", Image: "Iphone"),
            ProductsModel(name: "Apple TV", Image: "Iphone"),
            ProductsModel(name: "Apple TV+", Image: "Iphone"),
            ProductsModel(name: "Apple Watch", Image: "Iphone"),
            ProductsModel(name: "Beats by Apple", Image: "Iphone"),
            ProductsModel(name: "Billing & Subscriptions", Image: "Iphone"),
            ProductsModel(name: "iPad", Image: "Iphone")
     
            
        ])
    }
}
