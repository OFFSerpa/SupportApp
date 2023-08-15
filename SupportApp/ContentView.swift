//
//  ContentView.swift
//  SupportCopy
//
//  Created by Vinicius Serpa on 14/08/23.
//

import SwiftUI

struct ContentView: View {
    
 
    
    var body: some View {
        TabView{
            SupportView()
                .tabItem{
                    Label("Suporte", systemImage: "square.grid.2x2.fill")
                }
            MapView()
                .tabItem{
                    Label("Localizações", systemImage: "mappin.and.ellipse")
                }
            ActivityView()
                .tabItem {
                    Label("Atividade", systemImage: "clock.fill")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
