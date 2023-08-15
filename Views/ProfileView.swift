//
//  ProfileView.swift
//  SupportApp
//
//  Created by Vinicius Serpa on 15/08/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        VStack {
            

            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 80, height: 80)
                .padding(.bottom, 5)
            Text("Vinicius Serpa")
                .font(.title)
                .fontWeight(.semibold)
            Text("vinicius.spansan@gmail.com")
                .accentColor(.secondary)
            
                Spacer()
                .frame(height: 40)
            
            
            
            Text("REGION")
                .frame(width: 360, alignment: .leading)

                .font(.footnote)
                .foregroundColor(.secondary)
            
            NavigationLink {
                
            } label: {
                HStack{
                    Text("Brazil")
                        .foregroundColor(Color("Text"))
                        .padding(.leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .padding(.trailing)

                }
                .frame(width: 365, height: 35)
                .background(Color("background"))
                .cornerRadius(6)
                
            }

            
            .padding(.horizontal, 20)
            Text("Update your country or region to see the service options available in your area.")
                .frame(width: 340, alignment: .leading)
                .font(.footnote)
                .foregroundColor(.secondary)
            
            
            
            
            
            NavigationLink {
                
            } label: {
                HStack{
                    Text("Phone")
                        .foregroundColor(Color("Text"))
                        .padding(.leading)
                    Spacer()
                    Text("+55 (11) 99988-4455")
                        .foregroundColor(.secondary)
                    Image(systemName: "chevron.right")
                        .padding(.trailing)


                }
                .frame(width: 365, height: 35)
                .background(Color("background"))
                .cornerRadius(6)
   
            }

            Text("Apple Suport will contact you at this number.")
                .frame(width: 340, alignment: .leading)

                .font(.footnote)
                .foregroundColor(.secondary)

            
            NavigationLink {
                
            } label: {
                HStack{
                    Text("Submit App Feedback")
                        .foregroundColor(.blue)
                        .padding(.leading)
                    Spacer()
                    

                }
                .frame(width: 365, height: 35)
                .background(Color("background"))
                .cornerRadius(6)
                
            }
            
            
            
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
