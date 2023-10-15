//
//  ShapesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 14.10.2023.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Capsule(style: .circular)
//            .frame(width: 250, height: 100)
//            .shadow(color: .red, radius: 10)
//        Ellipse()
//            .frame(width: 300, height: 200)
//        Circle()
            //.fill(.red)
            //.foregroundStyle(.cyan)
            //.stroke(Color.yellow)
//            .stroke(
//                .pink,
//                style: StrokeStyle(
//                    lineWidth: 30,
//                    lineCap: .butt,
//                    dash: [20]
//                )
//            )
//            .trim(from: 0.5, to: 1.0)
//            .stroke(.purple ,lineWidth: 50)
//        Rectangle()
        RoundedRectangle(cornerRadius: 50)
            .frame(width: 200, height: 100)
    }
}

#Preview {
    ShapesBootcamp()
}
