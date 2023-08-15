//
//  MapView.swift
//  SupportCopy
//
//  Created by Vinicius Serpa on 14/08/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(center:  CLLocationCoordinate2D(latitude: -23.539334, longitude: -46.649086), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
//    @State public var region = MKCoordinateRegion()
    
    var body: some View {
        GeometryReader{ geometry in
            NavigationStack{
                ZStack{
                    Map(coordinateRegion: $region)
                    
                    VStack(){
                        SearchHereButton()
                            .padding()
                        Spacer()
                           ShowListButton()
                            .padding()
                    }
                }
                .navigationTitle("Locais de Reparo")
                .navigationBarTitleDisplayMode(.inline)
                
            }
        
        }
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
