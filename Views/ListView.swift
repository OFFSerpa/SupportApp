//
//  ListTeste.swift
//  SupportApp
//
//  Created by Vinicius Serpa on 16/08/23.
//

import SwiftUI

struct ListView: View {
    
    @StateObject var services = ServiceViewModel()
    
    var body: some View {
        NavigationStack{
            List(){
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
    }
}

struct ListTeste_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
