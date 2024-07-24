//
//  Friend.swift
//  Friendface
//
//  Created by Arseniy Oksenoyt on 7/18/24.
//

import Foundation
import SwiftData

@Model
class Friend: Codable {
    enum CodingKeys: CodingKey {
        case id, name
    }

    let id: UUID
    var name: String
    
    init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
    
    required init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(UUID.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
    }
    
    func encode(to encoder: Encoder) throws {
        var contrainer = encoder.container(keyedBy: CodingKeys.self)
        try contrainer.encode(id, forKey: .id)
        try contrainer.encode(name, forKey: .name  )
    }
}
