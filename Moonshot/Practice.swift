//
//  ContentView.swift
//  Moonshot
//
//  Created by Anna Busby on 30/12/2023.
//

import SwiftUI

struct CustomText: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
    
    init(text: String) {
        print("Creating a new CustomText")
        self.text = text
    }
}

struct Practice: View {
    var body: some View {
        Image(.example)
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 100)
            
        Image(.example)
            .resizable()
            .scaledToFit()
        // this with resize the image correctly to a set percentage of the avaible screen space
            .containerRelativeFrame(.horizontal) { size, axis in
                size * 0.5
            }
        
        ScrollView {
            //the lazy will make the view as needed, so as the user scrolls the view will be created
            LazyVStack(spacing: 10) {
                ForEach(0..<100) {
                    CustomText(text: "Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    Practice()
}
