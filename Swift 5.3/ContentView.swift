//
//  ContentView.swift
//  Swift 5.3
//
//  Created by Giovanni Gaffé on 2022/2/9.
//

import MapKit
import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    
    var body: some View {
        Button {
            tapCount += 1
        } label: {
            Image(systemName: "star")
            Text("Tap count \(tapCount)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
