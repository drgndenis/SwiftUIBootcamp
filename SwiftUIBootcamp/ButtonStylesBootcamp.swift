//
//  ButtonStylesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 27.10.2023.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        Button("Button title") {
            
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .controlSize(.extraLarge)
        .buttonStyle(.bordered)
        
        Button("Button title") {
            
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .controlSize(.large)
        .buttonStyle(.borderedProminent)
        
        Button("Button title") {
            
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .controlSize(.large)
        .buttonStyle(.borderless)
        
        Button("Button title") {
            
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .controlSize(.regular)
        .buttonStyle(.plain)
    }
}

#Preview {
    ButtonStylesBootcamp()
}
