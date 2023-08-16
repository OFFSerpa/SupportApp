//
//  SupportToolsButtons.swift
//  SupportCopy
//
//  Created by Vinicius Serpa on 14/08/23.
//

import SwiftUI

struct SupportToolsButtons: View {
    @State var subscription = false
    @State var password = false
    @State var coverage = false

    
    
    var body: some View {
        VStack{
            Button {
                subscription = true
            } label: {
                ZStack{
                    HStack() {
                        Image(systemName: "calendar.badge.plus")
                            .symbolRenderingMode(.multicolor)
                            .font(.largeTitle)
                            .padding(.trailing, 10)
                        
                        Text("Manage Subscriptions")
                            .foregroundColor(Color("Text"))
                            .font(.title2)
                            .fontWeight(.medium)
                            .padding(.trailing, 60)
                        
                    }
                    
                }
                .frame( width: 360, height: 65)
                .background(Color("background"))
                .cornerRadius(6)
                
            }
            .sheet(isPresented: $subscription){
                Subscriptions()
            }
            Button {
                password = true
            } label: {
                ZStack{
                    HStack() {
                        Image(systemName: "rectangle.and.pencil.and.ellipsis")
//                            .symbolRenderingMode(.palette)
                            .foregroundStyle(Color.blue, Color.gray)
                            .font(.largeTitle)
                            .padding(.trailing, 10)
                        
                        Text("Reset Password")
                            .foregroundColor(Color("Text"))
                            .font(.title2)
                            .fontWeight(.medium)
                            .padding(.trailing, 110)
                        
                    }
                    
                }
                .frame( width: 360, height: 65)
                .background(Color("background"))
                .cornerRadius(6)
                
            }
            .sheet(isPresented: $password){
                Password()
  
            }
            
            Button {
                coverage = true
            } label: {
                ZStack{
                    HStack() {
                        Image(systemName: "apple.logo")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                            .padding(.trailing, 10)
                        
                        Text("Check Coverage")
                            .foregroundColor(Color("Text"))
                            .font(.title2)
                            .fontWeight(.medium)
                            .padding(.trailing, 120)
                        
                    }
                    
                }
                .frame( width: 360, height: 65)
                .background(Color("background"))
                .cornerRadius(6)
                
            }
            .sheet(isPresented: $coverage){
                Coverage()
  
               
                
            }
        }
        
    }
}

struct SupportToolsButtons_Previews: PreviewProvider {
    static var previews: some View {
        SupportToolsButtons()
    }
}
