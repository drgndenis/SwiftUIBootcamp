//
//  AsyncImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 26.10.2023.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    let url = URL(string: "https://picsum.photos/400")
    @State private var animateGradient = false
    
    
    var body: some View {
        ZStack {
            VStack {
                Text("Create Random Image")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.purple, .red,.orange, .pink],
                            startPoint: animateGradient ? .leading : .bottomLeading,
                            endPoint: animateGradient ? .trailing : .bottomTrailing))
                
                AsyncImage(url: url) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                } placeholder: {
                    ProgressView()
                }
            
            }
        }
    }
}

#Preview {
    AsyncImageBootcamp()
}
