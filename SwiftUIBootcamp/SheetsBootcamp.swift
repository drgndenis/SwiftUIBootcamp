//
//  SheetsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 18.10.2023.
//

import SwiftUI

struct SheetsBootcamp: View {
    @State private var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.purple
                .ignoresSafeArea()
            VStack {
                Button(action: {
                    showSheet.toggle()
                }, label: {
                    Text("Button")
                        .font(.headline)
                        .foregroundStyle(.gray)
                        .padding(20)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                })
//                .fullScreenCover(isPresented: $showSheet, content: {
//                    SecondScreen()
//                })
                
                // DO NOT ADD CONDITIONAL LOGIC
                .sheet(isPresented: $showSheet, content: {
                    SecondScreen()
                })
            }
        }
    }
}

struct SecondScreen: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            // Background
            Color.pink
                .ignoresSafeArea()
            
            VStack {
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .padding(20)
                })
            }
        }
    }
}

#Preview {
    SheetsBootcamp()
}
