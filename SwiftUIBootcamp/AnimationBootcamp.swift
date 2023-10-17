//
//  AnimationBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 17.10.2023.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State private var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            
            Button("Button") {
                    isAnimated.toggle()
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? .indigo : .teal)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                .animation(.default, value: isAnimated)
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
