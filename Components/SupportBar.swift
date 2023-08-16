//
//  SupportBar.swift
//  SupportCopy
//
//  Created by Vinicius Serpa on 14/08/23.
//

import SwiftUI

struct SupportBar: View {
    
    @State var showModal = false
    
    var body: some View {
        VStack{
            Button {
                showModal = true
            } label: {
                ZStack{
                    HStack() {
                        Text("Tell us what's happening")
                            .foregroundColor(.secondary)
                            .padding(.trailing, 120)
                                
                                             
                        Image(systemName: "mic.fill")
                            .foregroundColor(.secondary)
                    }
                    
                    
                }
                .frame( width: 360, height: 45)
                .background(Color("background"))
                .cornerRadius(6)

            }

            
        }
        .sheet(isPresented: $showModal){
            MapView()
        }
        
        
        
    }
    
    struct SupportBar_Previews: PreviewProvider {
        static var previews: some View {
            SupportBar()
        }
    }
}
