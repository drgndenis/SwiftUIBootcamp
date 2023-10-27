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
            Spacer()
            //            Button("Button") {
            //                isAnimated.toggle()
            //            }
            //            .controlSize(.large)
            //            .buttonStyle(.borderedProminent)
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? .indigo : .teal)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .overlay(content: {
                    isAnimated ? Text("Circle") : Text("Rectangle")
                })
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                .animation(.default, value: isAnimated)
                .onTapGesture {
                    isAnimated.toggle()
                }
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
