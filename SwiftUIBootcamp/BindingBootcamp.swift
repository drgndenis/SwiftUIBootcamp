//
//  BindingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 17.10.2023.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State private var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            
            backgroundColor
                .ignoresSafeArea()
            
            ButtonView(backgroundColor: $backgroundColor)
        }
    }
}

#Preview {
    BindingBootcamp()
}

struct ButtonView: View {
    @Binding var backgroundColor: Color
    
    var body: some View {
        Button(action: {
            backgroundColor = .purple
            
        }, label: {
            Text("Button")
                .foregroundStyle(.windowBackground)
                .padding()
                .padding(.horizontal)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        })
    }
}
