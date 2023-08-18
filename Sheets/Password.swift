//
//  Password.swift
//  SupportApp
//
//  Created by Vinicius Serpa on 15/08/23.
//

import SwiftUI

struct Password: View {
 
    @State private var isOn: Bool = false
    
    @StateObject var id = IDAppleViewModel()
    
    @State var selectedID: IDApple? = nil
    
    @Environment(\.defaultMinListRowHeight) var rowHeight
    
    @Environment(\.dismiss) var dismiss
    
    func delay() async {
      
        isOn = true
        try? await Task.sleep(for: Duration.seconds(3))
        dismiss()
    }
    func search() {
            Task {
                await delay()
            }
    }
    
    
    var body: some View {
        NavigationStack{
            VStack {
                ScrollView{
                    VStack(spacing: 0){
                        Text("Confirmar ID Apple")
                            .font(.largeTitle)
                            .bold()
                            .padding(.bottom, 5)
                            .padding(.top, 40)
                        Text("Selecione o ID Apple cuja senha você deseja redefinir.")
                            .font(.subheadline)
                            .multilineTextAlignment(.center)
                            .frame(width: 300)
                        Divider()
                            .padding(.top, 50)
                        List(){
                            Section{
                                ForEach(id.id) { id in
                                    IDAppleView(id: id, selectedID: $selectedID)
                                    }
                                .padding(.vertical, 3)
                            } footer: {
                                if selectedID == id.id.last {
                                    Text("Sua privacidade é importante. Se você redefinir a senha de outro ID Apple, suas infomrações pessoais não serão salvas neste dispositivo.")
                                        .font(.footnote)
                                }
                            }
                            

                        }.listStyle(.inset)
                            .frame(height: rowHeight * 3.5 + 200, alignment: .top)
                            .scrollDisabled(true)
                        Spacer()
                        
                    }
                }
                if isOn == false {
                    Button(){
                        search()
                    } label: {
                            HStack{
                                Spacer()
                                Text("Continuar")
                                    .bold()
                                Spacer()
                            }
                            .padding(.vertical, 4)
                        }
                    .buttonStyle(.borderedProminent)
                    .padding(.horizontal)
                } else {
                    Button(){
                        search()
                    } label: {
                            HStack{
                                
                                Spacer()
                                ProgressView()
                                    .progressViewStyle(CircularProgressViewStyle(tint: .secondary))
                                    .padding(.trailing, 1)
                                Text("Continuar")
                                    .bold()
                                    .foregroundColor(.secondary)
                                Spacer()
                            }
                            .padding(.vertical, 4)
                        }
                    .buttonStyle(.bordered)
                    .padding(.horizontal)
                }
                
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button("Cancelar") {
                        dismiss()
                    }
                }
            }
        }
    }
}

struct Password_Previews: PreviewProvider {
    static var previews: some View {
        Password()
    }
}
