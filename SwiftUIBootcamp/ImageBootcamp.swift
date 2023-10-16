//
//  ImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 15.10.2023.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("batman")
            .resizable()
//            .aspectRatio(contentMode: .fill)
            .scaledToFill()
            .frame(width: 300, height: 300)
            .clipShape(
//                Circle()
//                RoundedRectangle(cornerRadius: 25)
//                Ellipse()
                Circle()
            )
        
    }
}

#Preview {
    ImageBootcamp()
}
