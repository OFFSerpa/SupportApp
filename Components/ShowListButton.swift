//
//  ShowListButton.swift
//  SupportCopy
//
//  Created by André Arteca on 14/08/23.
//

import SwiftUI

struct ShowListButton: View {
    
    @State private var listSheet: Bool = false
    @State private var searchSheet: Bool = false
    
    var body: some View {
        GeometryReader{ geometry in
            VStack (alignment: .center){
                Spacer()
                HStack{
                    Spacer()
                    Button{
                        searchSheet.toggle()
                    } label: {
                        HStack{
                            Image(systemName: "magnifyingglass")
                        }
                        .frame(width: geometry.size.width * 0.12 ,height: geometry.size.height * 0.06)
                        .background(.thickMaterial)
                        .cornerRadius(10)
                    }
                    Button{
                        listSheet.toggle()
                    } label: {
                        HStack{
                            Spacer()
                            Image(systemName: "list.bullet")
                            Text("Mostrar Lista")
                            Spacer()
                        }
                        .frame(width: geometry.size.width * 0.82 ,height: geometry.size.height * 0.06)
                      
                        .background(.thickMaterial)
                        .cornerRadius(10)
                    }
                    Spacer()
                }
                .sheet(isPresented: $listSheet) {
//                    MapListView(searchSheet: $searchSheet)
                    MapListView()

                        .presentationBackgroundInteraction(.enabled)
                        .presentationDetents([.medium, .large,.fraction(0.25)])
                        
                }
                .sheet(isPresented: $searchSheet) {
                    MapSearchView()
                        .presentationDetents([.large])
                        .interactiveDismissDisabled()
                }
            }
           
                
        }
    }
}

struct ShowListButton_Previews: PreviewProvider {
    static var previews: some View {
        ShowListButton()
    }
}
