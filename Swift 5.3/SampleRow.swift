//
//  SampleRow.swift
//  Swift 5.3
//
//  Created by Giovanni Gaffé on 2022/2/11.
//

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
