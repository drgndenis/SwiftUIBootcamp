//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 15.10.2023.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundStyle(.windowBackground)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [Color(uiColor: .purple), .purple],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color(uiColor: .purple), radius: 10, x: 0, y: 10)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 35, height: 35)
                            .shadow(color: Color(uiColor: .purple), radius: 10, x: 0, y: 10)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundStyle(.windowBackground)
                            )
                        , alignment: .bottomTrailing // Circle'in yerinin ayarlanması
                    )
            )
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
