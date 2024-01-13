//
//  AstronautView.swift
//  Moonshot
//
//  Created by Anna Busby on 13/01/2024.
//

import SwiftUI

struct AstronautView: View {
    
    let astronaut: Astronaut
    
    var body: some View {
        ScrollView {
            VStack {
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()
                    .clipShape(.capsule)
                    .padding(.horizontal)
                
                Text(astronaut.name)
                    .font(.title.bold())
                    .foregroundStyle(.white)
                    .padding(.bottom)
                
                
                
                Text(astronaut.description)
                    .foregroundStyle(.white)
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
        .background(.darkBackground)
    }
}

#Preview {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    return AstronautView(astronaut: astronauts["white"]!)
}
