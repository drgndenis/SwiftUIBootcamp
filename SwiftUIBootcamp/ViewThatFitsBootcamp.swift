//
//  ViewThatFitsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 29.11.2023.
//

import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            ViewThatFits {
                Text("This is some text that I would you like to display to the user!")
                Text("This is some text that I would you like")
                Text("This is some text")
            }

        }
        .frame(height: 300)
        .padding(50)
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsBootcamp()
}
