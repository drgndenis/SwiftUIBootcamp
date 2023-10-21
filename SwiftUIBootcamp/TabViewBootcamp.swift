//
//  TabViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 21.10.2023.
//

import SwiftUI

struct TabViewBootcamp: View {
    @State private var selectedTab: Int = 0
    
    var body: some View {
        
        TabView(content: {
            
            RoundedRectangle(cornerRadius: 25.0)
                .overlay {
                    SliderBootcamp()
                }
            
            RoundedRectangle(cornerRadius: 30.0)
                .foregroundStyle(.orange)
            
            RoundedRectangle(cornerRadius: 35.0)
            
                .overlay {
                    ToggleBootcamp()
                        .background(.cyan)
                }
                
        })
        .tabViewStyle(.page)
        .frame(height: 300)
        
        //        TabView(selection: $selectedTab) {
        //
        //            HomeView(selectedTab: $selectedTab)
        //                .tabItem {
        //                    Image(systemName: "house.fill")
        //                    Text("Home")
        //                }
        //                .tag(0)
        //
        //            Text("Browser Tab")
        //                .tabItem {
        //                    Image(systemName: "globe")
        //                    Text("Browser")
        //                }
        //                .tag(1)
        //
        //            Text("Profile Tab")
        //                .tabItem {
        //                    Image(systemName: "person.fill")
        //                    Text("Profile")
        //                }
        //                .tag(2)
        //        }
        .tint(.purple)
    }
}

#Preview {
    TabViewBootcamp()
}

struct HomeView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea(edges: .top)
            
            VStack {
                Text("HOME TAB")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go to Profile")
                        .foregroundStyle(.red)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                })
            }
        }
    }
}
