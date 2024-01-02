//
//  Practice2.swift
//  Moonshot
//
//  Created by Anna Busby on 30/12/2023.
//

import SwiftUI

struct Practice2: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Tap me") {
                Practice()
            }
            
            Divider()
            
            NavigationLink {
                Text("Detail View 2")
            } label: {
                VStack {
                    Text("This is the label")
                    Text("So is this")
                    Image(systemName: "face.smiling")
                }
                .font(.largeTitle)
            }
            
            List(0..<100) { row in
                NavigationLink("Whatever \(row)") {
                    Text("Detail \(row)")
                }
            }
            
                .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    Practice2()
}
