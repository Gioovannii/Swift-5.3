//
//  ContentView.swift
//  Swift 5.3
//
//  Created by Giovanni Gaffé on 2022/2/9.
//

import MapKit
import SwiftUI

struct ContentView: View {
    @State private var region  = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 35.689722, longitude: 139.692222), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    let manager = CLLocationManager()
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow))
            Text("\(region.center.latitude), \(region.center.longitude)")
        }
        .onAppear {
            manager.requestWhenInUseAuthorization()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
