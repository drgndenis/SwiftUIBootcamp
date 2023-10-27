//
//  BadgesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 27.10.2023.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        TabView {
            Color.purple
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .badge("New")
        
            Color.yellow
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Likes")
                }
                .badge(5)
        }
        .tint(.primary)
    }
}

#Preview {
    BadgesBootcamp()
}
