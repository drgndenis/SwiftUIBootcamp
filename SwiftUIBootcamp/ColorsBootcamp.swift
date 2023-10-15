//
//  ColorsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 14.10.2023.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.primary
//                Color(uiColor: UIColor.label) // Color.primary ile aynı islevi goruyor
//                Color(uiColor: .orange)
                Color("CustomColor")
            )
            .frame(width: 250, height: 150)
            .shadow(
                color: Color("CustomColor")
                    .opacity(0.6),
                    radius: 10,
                    x: -10,
                    y: -10
            )
    }
}

#Preview {
    ColorsBootcamp()
}
