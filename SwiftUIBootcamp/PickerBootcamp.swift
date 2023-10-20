//
//  PickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 20.10.2023.
//

import SwiftUI

struct PickerBootcamp: View {
    @State private var selection: String = "1"
    
    /*
     UIKit ile entegre edilip renk degistirilecek
     */
    
    var body: some View {
        
        Picker(
            selection: $selection) {
                Text("First picker").tag("1")
                Text("Second picker").tag("2")
                Text("Third picker").tag("3")
                Text("Fourth picker").tag("4")
            } label: {
                Text("Picker")
            }
            .pickerStyle(.wheel)
    }
}

#Preview {
    PickerBootcamp()
}
