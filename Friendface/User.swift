//
//  User.swift
//  Friendface
//
//  Created by Arseniy Oksenoyt on 7/18/24.
//

import Foundation

struct User: Hashable, Identifiable, Codable {
    let id: UUID
    let name: String
    let age: Int
    let company, email, address, about: String
    let friends: [Friend]
}
