//
//  ColorPickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 20.10.2023.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    @State private var backgroundColor: Color = .yellow
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            ColorPicker(
                "Select a color",
                selection: $backgroundColor,
                supportsOpacity: false
            )
            .padding()
            .background(.black)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding(20)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
