//
//  NavigationStackBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 18.10.2023.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    var body: some View {
        ZStack {
            NavigationStack {
                ScrollView {
                    NavigationLink("Hello, World!", destination: SecondScreenView())
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                }
                .navigationTitle("All In Boxes")
                .navigationBarTitleDisplayMode(.large)
                //                .toolbar(.hidden) -> Hidden navigationTitle
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Image(systemName: "person.fill")
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        NavigationLink(destination: SecondScreen()) {
                            Image(systemName: "gear")
                                .bold()
                                .foregroundStyle(.black)
                        }
                        
                    }
                }
            }
        }
    }
}

struct SecondScreenView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
                .toolbar(.hidden)
            VStack {
                Spacer()
                Button("Back Button") {
                    dismiss()
                }
                Spacer()
                NavigationLink("Click Here!", destination: Text("3rd Screen"))
                Spacer()
            }
            
        }
    }
}

#Preview {
    NavigationStackBootcamp()
}


