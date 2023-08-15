//
//  ProductCard.swift
//  SupportCopy
//
//  Created by Vinicius Serpa on 15/08/23.
//

import SwiftUI

struct ProductCard: View {
    let product: ProductsModel
    
    var body: some View {
        NavigationLink {
            DeviceView()
        } label: {
            HStack{
                VStack{
                    Image(product.Image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.top)
                    
                    Text(product.name)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Text"))
                        .padding(.horizontal, 7)
                        .padding(.bottom)
                   
                    
                }
            }
            .foregroundColor(.clear)
            .frame(width: 100, height: 100)
            .background(Color("background"))
            .cornerRadius(6)
        }
    }
}
struct ProductCard_Previews: PreviewProvider {
    
    static var product1 = ProductsModel(name: "Apple Watch", Image: "Iphone")

    static var previews: some View {
        ProductCard(product: product1)
    }
}
