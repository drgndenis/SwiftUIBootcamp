//
//  AppStorageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 24.10.2023.
//

import SwiftUI

struct AppStorageBootcamp: View {
    @AppStorage("name") var selectedUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(selectedUserName ?? "Say my name")
            
            if let name = selectedUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                selectedUserName = "Denis"
            }
        }
    }
}

#Preview {
    AppStorageBootcamp()
}
