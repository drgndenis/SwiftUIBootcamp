//
//  PopoverBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 29.11.2023.
//

import SwiftUI

struct PopoverBootcamp: View {
    @State private var showPopover = false
    @State private var feedbackOptions: [String] = [
        "Very Good 🥳",
        "Average 🙂",
        "Very bad 😡"
    ]
    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            VStack {
                Button("Click Me!") {
                    showPopover.toggle()
                }
                .buttonStyle(.borderedProminent)
                .popover(isPresented: $showPopover, attachmentAnchor: .point(.top), content: {
                    ForEach(feedbackOptions, id: \.self) { option in
                        Text(option)
                        if option != feedbackOptions.last {
                            Divider()
                        }
                    }
                    .padding()
                    .presentationCompactAdaptation(.popover)
                })
            }
        }
    }
}

#Preview {
    PopoverBootcamp()
}
