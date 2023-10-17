//
//  AnimationTimingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 17.10.2023.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State private var isAnimating: Bool = false
    
    var body: some View {
        VStack {
            
            Button("Change Animation") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(LinearGradient(
                    gradient: Gradient(
                        colors: [.purple, .pink]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing))
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring(
                    response: 0.5,
                    dampingFraction: 0.3,
                    blendDuration: 0.2), value: isAnimating)
            
//            RoundedRectangle(cornerRadius: 25.0)
//                .fill(LinearGradient(
//                    gradient: Gradient(
//                        colors: [.purple, .orange]),
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing))
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.easeIn, value: isAnimating)
//            
//            RoundedRectangle(cornerRadius: 25.0)
//                .fill(LinearGradient(
//                    gradient: Gradient(
//                        colors: [.black , .white]),
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing))
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.easeInOut, value: isAnimating)
//            
//            RoundedRectangle(cornerRadius: 25.0)
//                .fill(LinearGradient(
//                    gradient: Gradient(
//                        colors: [.purple, .blue]),
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing))
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.easeOut, value: isAnimating)
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
