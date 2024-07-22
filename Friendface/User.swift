//
//  User.swift
//  Friendface
//
//  Created by Arseniy Oksenoyt on 7/18/24.
//

import Foundation

struct User: Hashable, Identifiable, Codable {
    let id: UUID
    var isActive: Bool
    var name: String
    var age: Int
    var company, email, address, about: String
    var registered: Date
    var friends: [Friend]
    
    static let example = User(id: UUID(), isActive: true, name: "John", age: 32, company: "Some Company", email: "aaa@bbb.ccc", address: "1234 Hudson str", about: "Nothing to say, just an example", registered: .now, friends: [])
}
