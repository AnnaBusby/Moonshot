//
//  Mission.swift
//  Moonshot
//
//  Created by Anna Busby on 02/01/2024.
//

import Foundation

//nested struct
struct Mission: Codable, Identifiable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
    
}
