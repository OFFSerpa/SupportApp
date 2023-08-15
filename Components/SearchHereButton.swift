//
//  SearchHereButton.swift
//  SupportCopy
//
//  Created by André Arteca on 14/08/23.
//

import SwiftUI

struct SearchHereButton: View {
    
    func delay() async {
      
        isOn.toggle()
        try? await Task.sleep(for: Duration.seconds(3))
        isOn.toggle()
    }
    
    func search() {
            Task {
                await delay()
            }
    }
    
    @State private var isOn: Bool = false
    
    var body: some View {
        
        Button{
            search()
        } label: {
            VStack {
                if isOn == false {
                    Text("Pesquisar aqui")
                        .foregroundColor(.white)
                        .bold()
                } else{
                    HStack{
                        Text("Buscando")
                            .foregroundColor(.gray)
                            .bold()
                    }
                }
               
            }
            .padding(.vertical, 5)
            .padding(.horizontal, 10)
            .background(.black)
            .clipShape(Capsule())
           
        }
            
    }
}

struct SearchHereButton_Previews: PreviewProvider {
    static var previews: some View {
        SearchHereButton()
    }
}
