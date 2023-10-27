//
//  ListSwipeActionsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 27.10.2023.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    @State var fruits: [String] = [
        "apple", "banana", "strawberry", "cherry", "orange"
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0)
                    .swipeActions(
                        edge: .trailing,
                        allowsFullSwipe: false) {
                            Button("Archive") {
                                
                            }
                            .tint(.gray)
                            
                            Button("Save") {
                                
                            }
                            .tint(.green)
                            
                            Button("Download") {
                                
                            }
                            .tint(.blue)
                        }
                        .swipeActions(edge: .leading, allowsFullSwipe: true) {
                            Button("Delete") {
                                
                            }
                            .tint(.red)
                        }
            }
        }
    }
}

#Preview {
    ListSwipeActionsBootcamp()
}
