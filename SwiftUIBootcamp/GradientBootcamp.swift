//
//  GradientBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 15.10.2023.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                LinearGradient(
//                    colors: [.red, .yellow],
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing
//                )
//                RadialGradient(
//                    colors: [.red, .yellow, .orange, .red, .orange],
//                    center: .topLeading,
//                    startRadius: 5,
//                    endRadius: 200
//                )
                AngularGradient(
                    colors: [.red, .blue],
                    center: .topLeading,
                    angle: .degrees(180 + 45)
                )
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientBootcamp()
}
