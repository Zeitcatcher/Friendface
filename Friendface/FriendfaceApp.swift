//
//  FriendfaceApp.swift
//  Friendface
//
//  Created by Arseniy Oksenoyt on 7/8/24.
//

import SwiftData
import SwiftUI

@main
struct FriendfaceApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}
