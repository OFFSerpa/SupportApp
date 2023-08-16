//
//  ProductListView.swift
//  SupportCopy
//
//  Created by André Arteca on 15/08/23.
//

import SwiftUI

struct ProductListView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @Binding public var product: String
    
    var appleProducts: [String] = ["iPad", "iPod", "iPhone"]
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 0){
                VStack(alignment: .leading, spacing: 5){
                    Text("Escolher um produto")
                        .font(.title2)
                        .bold()
                
                    Text("Confira as lojas onde você pode obter serviço para o produto.")
                        .font(.body)
                }
                .padding(.horizontal, 20)
    
                List{
                    ForEach(appleProducts, id: \.self) { product in
                        Button {
                            self.product = product
                            dismiss()
                        } label: {
                            HStack{
                                Image(systemName: "person")
                                Text(product)
                                    .foregroundColor(.primary)
                                Spacer()
                                if self.product ==  product {
                                    Image(systemName: "checkmark")
                                }
                               
                            }
                        }

                    }
                }
               
            }
            .background(Color("background"))
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Text("Cancelar")
                    }

                }
            }
        }
       
    }
}
//
//struct ProductListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductListView()
//    }
//}
