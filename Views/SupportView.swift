//
//  SupportView.swift
//  SupportCopy
//
//  Created by Vinicius Serpa on 14/08/23.
//

import SwiftUI



struct SupportView: View {
    
    @State var profile = false
    
    
    
    var body: some View {
        
        
        NavigationStack{
            ScrollView{
                
                VStack{
                    
                    //Botão de Pesquisa
                    Spacer()
                    
                    SupportBar()
                    
                    divider()
                    
                    //My Devices
                    
                    HStack {
                        Text("My Devices")
                            .font(.title2)
                            .fontWeight(.semibold)
                        Image(systemName: "chevron.right")
                            .foregroundColor(.secondary)
                            .padding(.trailing, 220)
                    }
                    
                    Scroll_View(deviceViewModel: DeviceViewModel())
                    
                    divider()
                    
                    //Support Tools
                    
                    HStack {
                        Text("Support Tools")
                            .font(.title2)
                            .fontWeight(.semibold)
                        Image(systemName: "chevron.right")
                            .foregroundColor(.secondary)
                            .padding(.trailing, 220)
                    }
                    
                    SupportToolsButtons()
                    
                    divider()
                    
                    
                }
                //  My Services
                
                VStack{
                    HStack {
                        Text("My Services")
                            .font(.title2)
                            .fontWeight(.semibold)
                        Image(systemName: "chevron.right")
                            .foregroundColor(.secondary)
                            .padding(.trailing, 220)
                    }
                    
                    ServicesScrollVIew(serviceViewModel: ServiceViewModel())
                    divider()
                    
                    HStack {
                        Text("More Products")
                            .font(.title2)
                            .fontWeight(.semibold)
                        Image(systemName: "chevron.right")
                            .foregroundColor(.secondary)
                            .padding(.trailing, 195)
                    }
                    
                    ProductsScrollView(productViewModel: ProductViewModel())
                    
                }
                
            }
            .navigationTitle("Support")
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    Button { profile = true } label: {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 35,height: 35)
                            .foregroundColor(.secondary)
                    }
                    
                    .sheet(isPresented: $profile){
                        ProfileView()
                    }
                    
                    
                }
            }
        }
    }
    
    struct SupportView_Previews: PreviewProvider {
        static var device1 = DeviceModel(name: "iPhone", description:" This iPhone 13", Image: "Iphone")
        
        static var previews: some View {
            SupportView()
        }
    }
}
