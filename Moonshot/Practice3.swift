//
//  Practice3.swift
//  Moonshot
//
//  Created by Anna Busby on 30/12/2023.
//

import SwiftUI

struct User: Codable {
    var name: String
    var address: Address
}

struct Address: Codable {
    var street: String
    var city: String
}

struct Practice3: View {
    var body: some View {
        Button("Decode") {
            let input = """
               {
                   "name": "Taylor Swift",
                   "address": {
                       "street": "555, Taylor Swift Avenue",
                       "city": "Nashville"
                   }
               }
               """
            let data = Data(input.utf8)
            let decoder = JSONDecoder()
            
            if let user = try? decoder.decode(User.self, from: data) {
                print(user.address.city)
            }
        }
    }
}

#Preview {
    Practice3()
}
