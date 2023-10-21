//
//  onAppearBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 21.10.2023.
//

import SwiftUI

struct OnAppearBootcamp: View {
    @State private var textName = "Start text."
    @State private var count: Int = 0
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Text(textName)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
                    textName = "My name is Denis"
                })
            })
            .navigationTitle("onAppear \(count)")
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
