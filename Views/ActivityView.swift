//
//  ActivityView.swift
//  SupportCopy
//
//  Created by Vinicius Serpa on 14/08/23.
//

import SwiftUI

struct ActivityView: View {
    var body: some View {
        NavigationStack{
            
            
            ScrollView{
                
                
                Image(systemName: "clock.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .padding(.top, 220)
                    .foregroundColor(.secondary)
                
//
                Text("No support activity in the past \n 90 days")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .fontWeight(.semibold)
                    .padding(.horizontal)
                    .padding(.top)
                
                
                
                Text("Past and upcoming reservations, calls, and chats \n with Apple Support will appear here.")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding(.horizontal, 10)
                

            }
            .navigationTitle("Recent Activity")

        }
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
