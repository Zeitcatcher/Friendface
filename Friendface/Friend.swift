//
//  Friend.swift
//  Friendface
//
//  Created by Arseniy Oksenoyt on 7/18/24.
//

import Foundation

struct Friend: Hashable, Identifiable, Codable {
    let id: UUID
    var name: String
}
