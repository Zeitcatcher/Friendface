//
//  ContentView.swift
//  Friendface
//
//  Created by Arseniy Oksenoyt on 7/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var users = [User]()
    
    var body: some View {
        NavigationStack {
            List(users) { user in
                NavigationLink(value: user) {
                    HStack {
                        Circle()
                            .fill(user.isActive ? .green : .red)
                            .frame(width: 30)
                        
                        Text(user.name)
                    }
                }
            }
            .navigationTitle("FriendFace")
            .navigationDestination(for: User.self) { user in
                Text(user.name)
            }
            .task {
                await fetchUsers()
            }
        }
    }
    
    func fetchUsers() async {
        guard users.isEmpty else { return }
        guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else { return }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601
            users = try decoder.decode([User].self, from: data)
        } catch {
            print("Download failed")
        }
    }
}

#Preview {
    ContentView()
}
