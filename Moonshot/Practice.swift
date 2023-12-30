//
//  ContentView.swift
//  Moonshot
//
//  Created by Anna Busby on 30/12/2023.
//

import SwiftUI

struct Practice: View {
    var body: some View {
        Image(.example)
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 300)
            
        Image(.example)
            .resizable()
            .scaledToFit()
            .containerRelativeFrame(.horizontal) { size, axis in
                size * 0.8
            }
    }
}

#Preview {
    Practice()
}
