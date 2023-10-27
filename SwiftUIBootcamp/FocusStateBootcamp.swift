//
//  FocusStateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 27.10.2023.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingField: Hashable {
        case userName
        case password
    }
    
    @State private var userName = ""
    @State private var password = ""
    @FocusState private var fieldInFocus: OnboardingField?
    
    var body: some View {
        VStack(spacing: 25) {
            
            TextField(text: $userName) {
                Text("Add your name here...")
                    .fontWeight(.semibold)
                    .foregroundStyle(.orange)
            }
            .focused($fieldInFocus, equals: .userName)
            .frame(height: 50)
            .padding(.leading)
            .frame(maxWidth: .infinity)
            .background(.secondary)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            // Keyboard uzerinde sag alt tarafta butonun ozellestirilmesi
            .submitLabel(.next)
            .onSubmit {
                if !userName.isEmpty {
                    fieldInFocus = .password
                }
            }
            
            
            // Use SecureField for passwords
            SecureField(text: $password) {
                Text("Add your password here...")
                    .fontWeight(.semibold)
                    .foregroundStyle(.orange)
            }
            .focused($fieldInFocus, equals: .password)
            .frame(height: 50)
            .padding(.leading)
            .frame(maxWidth: .infinity)
            .background(.secondary)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            .submitLabel(.done)
            
            Button(action: {
//                let userNameIsValid = !userName.isEmpty
//                let passwordIsValid = !password.isEmpty
//                
//                if userNameIsValid && passwordIsValid {
//                    print("Signed")
//                } else if userNameIsValid {
//                    // if username is not empty but password is empty, focusing password
//                    fieldInFocus = .password
//                } else {
//                    // if password is not empty but username is empty, focusing username
//                    fieldInFocus = .userName
//                }
                print("Signed now")
            }, label: {
                Text("SIGN UP 🫣")
                    .bold()
                    .foregroundStyle(.orange)
            })
            .buttonStyle(.bordered)
            .controlSize(.large)
        }
        .padding(30)
    }
}

#Preview {
    FocusStateBootcamp()
}
