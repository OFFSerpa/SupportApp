//
//  MapListView.swift
//  SupportCopy
//
//  Created by André Arteca on 14/08/23.
//

import SwiftUI

struct MapListView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State public var sheetOn: Bool = false
    
    @State public var product: String = ""
    
//    @Binding public var searchSheet: Bool
    
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "location.circle.fill")
                    .foregroundColor(.blue)
                    .font(.largeTitle)
                VStack(alignment: .leading){
                    HStack {
                        Text("Locais Próximos")
                            .font(.title2)
                        .bold()
                        Spacer()
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "xmark.circle.fill")
                                .font(.title)
                                .foregroundColor(.secondary)
                                .symbolRenderingMode(.hierarchical)
                        }

                    }
                    Button("Editar busca") {
                            dismiss()
//                            searchSheet = true
                    }
                }
            }
            .padding()
            HStack{
                Button {
                    sheetOn.toggle()
                } label: {
                    if product == "" {
                        Text("Produto")
                            .foregroundColor(.primary)
                            .padding(.horizontal, 40)
                            .padding(.vertical, 7)
                            .overlay(
                                        Capsule(style: .continuous)
                                            .stroke(Color.primary, style: StrokeStyle(lineWidth: 0.2))
                                    )
                    } else {
                        Text(product)
                            .foregroundColor(.white)
                            .padding(.horizontal, 40)
                            .padding(.vertical, 7)
                            .background(.blue)
                            .clipShape(Capsule())
                            
                    }
                    
                    Spacer()
                }
            }
            .padding(.leading)
            .padding(.bottom, 5)
            
            Divider()
            ScrollView{
                ForEach(1...10, id: \.self) { i in
                    VStack(alignment:.leading){
                        HStack(alignment: .firstTextBaseline){
                            Text("Fast Shop By WeCare Shopping Pátio Higienópolis")
                                .font(.title3)
                                .bold()
                                .frame(maxWidth: 300, alignment: .leading)
                        
                            Text("900 m")
                                .foregroundColor(.secondary)
                        }
                        Text("Av. Higienópolis, 698 Lj 133 134, São Paulo")
                    }
                    .padding()
                    .background(.white)
                    .frame(width: .infinity)
                    .cornerRadius(10)
                    .padding(.horizontal, 10)
                }
                
                }
                
         
        }
        .background(.secondary.opacity(0.05))
        .sheet(isPresented: $sheetOn) {
            ProductListView(product: $product)
        }
    }
        
}

struct MapListView_Previews: PreviewProvider {
    
    
    static var previews: some View {
        MapListView()
    }
}
