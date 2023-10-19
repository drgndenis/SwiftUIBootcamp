//
//  TextFieldBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 19.10.2023.
//

import SwiftUI

struct TextFieldBootcamp: View {
    @State private var commentTextField: String = ""
    @State private var dataArray: [String] = []
    
    var body: some View {
        NavigationStack {
            VStack {
                
                TextField("Enter your comment", text: $commentTextField)
                    .padding()
                    .background(
                        Color.gray
                            .opacity(0.3)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    )
                    .foregroundStyle(.black)
                    .font(.headline)
                
                Button(action: {
                    if textIsAppropriate() {
                        saveText()
                    }
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(.white)
                        .background(textIsAppropriate() ? .blue : .gray)
                        .font(.headline)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    
                })
                .disabled(!textIsAppropriate())
                
                // TextField kismina yazilan verilerin diziden cekilip text icerisine yazilmasi
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp!")
        }
    }
    
    func saveText() {
        dataArray.append(commentTextField)
        commentTextField = "" // Save butonuna bastiktan sonra textfield kismindaki bos olmasi
    }
    
    func textIsAppropriate() -> Bool {
        if commentTextField.count >= 3 {
            return true
        }
        return false
    }
}

#Preview {
    TextFieldBootcamp()
}
