//
//  BackgroundMaterialsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 26.10.2023.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View { // and textSelection

    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                Text("HI")
                    .textSelection(.enabled)
            }
            .frame(height: 300)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 30.0))
        }
        .ignoresSafeArea()
        .background(
            Image("therock")
        )
    }
}

#Preview {
    BackgroundMaterialsBootcamp()
}
