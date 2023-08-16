//
//  MoreProductsView.swift
//  SupportApp
//
//  Created by André Arteca on 16/08/23.
//

import SwiftUI

struct MoreProductsView: View {
    
    @StateObject public var products = ProductViewModel()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        NavigationStack{
                List(){
                    Section {
                        ForEach(products.products) { product in
                            
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
        MoreProductsView(products: ProductViewModel())
    }
}
