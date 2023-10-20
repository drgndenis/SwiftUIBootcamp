//
//  ToggleBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 20.10.2023.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State private var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            Text("Status: \(toggleIsOn ? "Online" : "Offline")")
            
            Toggle(
                isOn: $toggleIsOn,
                label: {
                    Text("Toggle Status")
                })
            .tint(.purple) // switch color change
            
            Spacer()
            
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleBootcamp()
}
