//
//  ContextMenuBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 19.10.2023.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    @State private var backgroundColor: Color = .teal
    @State private var systemName: String = "house.fill"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: systemName)
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundStyle(.windowBackground)
        .padding(30)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 25))
        // VStack'in oldugu alana kisa bir sure basili tuttugumuzda cikan secenekler
        .contextMenu(ContextMenu(menuItems: {
            Button(action: {
                backgroundColor = .red
            }, label: {
                Text("Change color to red")
            })
            Button(action: {
                backgroundColor = .teal
            }, label: {
                Text("Change color to default")
            })
            Button(action: {
                systemName = "house.lodge.fill"
            }, label: {
                Text("Change image")
            })
        }))
        
    }
}

#Preview {
    ContextMenuBootcamp()
}
