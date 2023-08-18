//
//  IDAppleView.swift
//  SupportApp
//
//  Created by André Arteca on 16/08/23.
//

import SwiftUI

struct IDAppleView: View {
    
    @State var id: IDApple
    
    @Binding var selectedID: IDApple?
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(verbatim: id.email)
                if id.desc != nil {
                    Text(id.desc ?? "")
                        .font(.callout)
                        .foregroundColor(.secondary)
                }
            }
            Spacer()
            if id == selectedID {
                Image(systemName: "checkmark")
                    .foregroundColor(.blue)
                    .fontWeight(.semibold)
            }
        }
        .padding(.vertical, 5)
        .onTapGesture {
            self.selectedID = self.id
        }
//        .padding(.vertical, 5)
    }
}

//struct IDAppleView_Previews: PreviewProvider {
//    static var previews: some View {
//        IDAppleView()
//    }
//}
