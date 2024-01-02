//
//  ContentView.swift
//  Moonshot
//
//  Created by Anna Busby on 02/01/2024.
//

import SwiftUI

struct ContentView: View {
    let astronauts = Bundle.main.decode("astronauts.json")
    
    var body: some View {
        Text(String(astronauts.count))
    }
}

#Preview {
    ContentView()
}
