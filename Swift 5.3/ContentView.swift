//
//  ContentView.swift
//  Swift 5.3
//
//  Created by Giovanni Gaffé on 2022/2/9.
//

import MapKit
import SwiftUI

struct SampleRow: View {
    let id: Int
    
    var body: some View {
        Text("Row \(id)")
    }
    
    init(id: Int) {
        self.id = id
        print("Loading row \(id)")
    }
}


struct ContentView: View {
    //    let countries = Bundle.main.decode([String].self, from: "countries.json")
        @State private var position = 0
    
    var body: some View {
        VStack {
            Text(String(position)).font(.largeTitle)
            
            ScrollView {
                ForEach(0..<100) { i in
                    LazyVStack {
                        Text(String(i))
                            .onAppear {
                                position = i
                            }
                    }
                }
            }
        }
      
        // MARK: - Understand lazy creation view
        
        //        ScrollView {
        //            LazyVStack {
        //                ForEach(1...1000, id: \.self, content: SampleRow.init)
        //    }
        //}
        
        
        // MARK: - Show flags
        //            LazyVStack(alignment: .leading) {
        //                ForEach(countries, id: \.self) { country in
        //                    Image(country)
        //                        .resizable()
        //                        .frame(width: 120, height: 60)
        //                        .border(Color.black, width: 1)
        //
        //                    Text(country)
        //                        .font(.title)
        //                }
        //    }
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
