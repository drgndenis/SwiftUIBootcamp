//
//  ModelBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 22.10.2023.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    @State private var users: [UserModel] = [
        UserModel(displayName: "Denis Dragan", userName: "Denis", followerCount: 497, isVerified: true),
        UserModel(displayName: "Samet Erdoğan", userName: "Yılmaz", followerCount: 638, isVerified: true),
        UserModel(displayName: "Ayşenur Kurucu", userName: "Aysenur", followerCount: 385, isVerified: false),
        UserModel(displayName: "Gizem Erdoğan", userName: "Gizem", followerCount: 197, isVerified: true),
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .foregroundStyle(.primary)
                            .frame(width: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                                .foregroundStyle(.primary)
                            Text("@\(user.userName)")
                                .foregroundStyle(.primary)
                        }
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .font(.title2)
                                .foregroundStyle(.blue)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                                .foregroundStyle(.primary)
                            Text("Followers")
                                .foregroundStyle(.secondary)
                                .font(.caption)
                        }
                        
                    }
                    .padding(.vertical, 7)
                }
            }
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelBootcamp()
}
