//
//  SliderBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 20.10.2023.
//

import SwiftUI

struct SliderBootcamp: View {
    @State private var sliderValue: Double = 1
    @State private var backgroundColor: Color = .yellow
    // isEditing sliderin hareket halini true durma halini false olarak algilar.
    @State private var isEditing: Bool = false
    
    var body: some View {
        ZStack {
            isEditing ?  .teal : backgroundColor
            
            VStack {
                Text("Rating")
                Text(
                    String(format: "%.2f", sliderValue)
//                    "\(sliderValue)"
                )
                // Slider hareket ettiginde text'in rengi kırmızı, durdugunda siyah olacak
                .foregroundStyle(isEditing ? .red : .black)
                // slider hareket ettirildiginde font largeTitle olacak slider durdugunda title2 konumuna gelecek
                .font(isEditing ? .largeTitle : .title2)
                
//                Slider(value: $sliderValue)
//                Slider(value: $sliderValue, in: 1...10)
//                Slider(value: $sliderValue, in: 1...5, step: 0.5)
//                    .tint(.purple) // yeni versiyonda .accentColor yerine .tint kullanilir
                Slider(
                    value: $sliderValue,
                    in: 1...5,
                    step: 0.5
                ) {
                    // label
                } minimumValueLabel: {
                    Text("1")
                        .font(.title)
                } maximumValueLabel: {
                    Text("5")
                        .font(.title)
                } onEditingChanged: { editing in
                    isEditing = editing // slideri uzerinde sag sola cektigimizde olusan olusacak durumlar
                }
                .padding(.horizontal, 25)
            }
        }
    }
}

#Preview {
    SliderBootcamp()
}

struct Previews_SliderBootcamp_LibraryContent: LibraryContentProvider {
    var views: [LibraryItem] {
        LibraryItem(/*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/)
    }
}
