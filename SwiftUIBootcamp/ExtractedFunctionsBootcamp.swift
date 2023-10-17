//
//  ExtractedFunctionsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 16.10.2023.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    @State private var backgroundColor: Color = .pink
    @State private var textName: String = "NO BODY"
    
    var body: some View {
        ZStack {
            
            backgroundColor
                .ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        
        VStack {
            Text(textName)
                .font(.largeTitle)
            
            PressButton(backgroundColor: $backgroundColor, textName: $textName)
        }
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}

struct PressButton: View {
    
    @Binding var backgroundColor: Color
    @Binding var textName: String
    
    var body: some View {
        Button(
            action: {
                buttonPressed()
            }, label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundStyle(.windowBackground)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            })
    }
    
    func buttonPressed() {
        textName = (backgroundColor == .pink) ? "This color is YELLOW" : "This color is PINK"
        backgroundColor = (backgroundColor == .pink) ? .yellow : .pink
    }
}
