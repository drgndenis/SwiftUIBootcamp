//
//  ListBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 18.10.2023.
//

import SwiftUI

struct ListBootcamp: View {
    @State private var fruits: [String] = [
        "apple", "banana", "cherry", "peach", "orange"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .foregroundStyle(.windowBackground)
                            .font(.headline)
                            
                    }
                    .onDelete(perform: delete) // Delete item in list with Shortcut
                    .onMove(perform: { indices, newOffset in
                        move(indices: indices, newOffset: newOffset)
                    })
                    .listRowBackground(Color.purple)
                } header: {
                    HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                    .font(.headline)
                    .foregroundStyle(.orange)
                }
            }
            //            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add") {
                        fruits.append("Coconat")
                    }
                }
            }
        }
        .accentColor(.red)
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
}

#Preview {
    ListBootcamp()
}
