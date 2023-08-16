//
//  ProductsScrollView.swift
//  SupportCopy
//
//  Created by Vinicius Serpa on 15/08/23.
//

import SwiftUI

struct ProductsScrollView: View {
    
    @StateObject var productViewModel:  ProductViewModel
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 10) {
                ForEach(0..<productViewModel.products.count) { index in
                    ProductCard(product: productViewModel.products[index])
                }
                
            }
            .padding([.leading], 15)

        }
        
    }
}

struct ProductsScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsScrollView(productViewModel: ProductViewModel())
    }
}
