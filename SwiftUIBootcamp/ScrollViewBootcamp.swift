//
//  ScrollViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 16.10.2023.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        VStack {
            ScrollView {
                ForEach(0..<20) { _ in
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(0..<20) { _ in
                                RoundedRectangle(cornerRadius: 25)
                                    .frame(width: 200, height: 150)
                                    .foregroundStyle(.white)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
