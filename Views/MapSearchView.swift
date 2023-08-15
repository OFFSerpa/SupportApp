//
//  MapSearchView.swift
//  SupportCopy
//
//  Created by André Arteca on 14/08/23.
//

import SwiftUI

struct MapSearchView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private var search: String = ""
    
    var body: some View {
        NavigationStack{
            List {
                if search == ""{
                    HStack{
                        Image(systemName: "location.fill")
                            .foregroundColor(.blue)
                            .font(.title)
                        VStack(alignment: .leading){
                            Text("Localização atual")
                            Text("Perto de Rua maria Antônia, 237, São Paulo")
                                .foregroundColor(.secondary)
                        }
                    }
                } else {
                    HStack{
                        Image(systemName: "mappin.circle.fill")
                            .symbolRenderingMode(.multicolor)
                            .font(.largeTitle)
                        VStack(alignment: .leading){
                            Text("Vila Madalena")
                            Text("5,4 km • São Paulo - SP, Brasil")
                                .foregroundColor(.secondary)
                        }
                    }
                    HStack{
                        Image(systemName: "mappin.circle.fill")
                            .symbolRenderingMode(.multicolor)
                            .font(.largeTitle)
                        VStack(alignment: .leading){
                            Text("Madre De Deus De Minas - MG")
                            Text("330 km • Brasil")
                                .foregroundColor(.secondary)
                        }
                    }
                    HStack{
                        Image(systemName: "mappin.circle.fill")
                            .symbolRenderingMode(.multicolor)
                            .font(.largeTitle)
                        VStack(alignment: .leading){
                            Text("Madureira")
                            Text("330 km • Rio de Janeiro - RJ, Brasil")
                                .foregroundColor(.secondary)
                        }
                    }
                }
               
                
            }
            .listStyle(.plain)
            
            .toolbar{
                ToolbarItem{
                    
                    HStack {
                        HStack() {
                            Image(systemName: "magnifyingglass")
                                .font(.system(size: 13))
                                .padding(.leading,10)
                              .foregroundColor(.secondary)
                                    TextField("Pesquisar por cidade ou CEP", text: $search)
                            
                            if search == ""{
                                
                            } else {
                                Button {
                                    search = ""
                                } label: {
                                    Image(systemName: "xmark.circle.fill")
                                        .font(.system(size: 13))
                                        .padding(.trailing, 5)
                                        .foregroundColor(Color.secondary .opacity(0.5))
                                }

                               
                            }
                                  }
                                .frame( width: 280, height: 30)
                                .background(.thickMaterial)
                            .cornerRadius(6)
                        Button("Cancelar") {
                            dismiss()
                        }
                    }
                }
            }
        }
    }
}

struct MapSearchView_Previews: PreviewProvider {
    static var previews: some View {
        MapSearchView()
    }
}
