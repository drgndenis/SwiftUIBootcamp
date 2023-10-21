//
//  IfLetGuardBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 21.10.2023.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State private var currentUserID: String? = "R1MPL3"
    @State private var displayText: String? = nil
    @State private var isLoading: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 10) {
                Text("Here we are practicing safe coding!")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
            }
        }
    }
    
    func loadData() {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
                displayText = "This is the new data User id \(userID)!"
                isLoading = false
            })
        } else {
        }
    }
    
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Error! There is no UserID"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            displayText = "This is the new data UserID: \(userID)!"
            isLoading = false
        })
    }
}

#Preview {
    IfLetGuardBootcamp()
}
