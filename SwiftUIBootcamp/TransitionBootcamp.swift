//
//  TransitionBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 17.10.2023.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State private var showView: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Button("Button") {
                    withAnimation(.easeInOut) {
                        showView.toggle()
                    }
                }
                Spacer()
                
                if showView {
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(height: UIScreen.main.bounds.height * 0.5)
                        .transition(.move(edge: .bottom))
                }
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
