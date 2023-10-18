//
//  AlertBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 18.10.2023.
//

import SwiftUI

struct AlertBootcamp: View {
    @State private var showAlert: Bool = false
    @State private var alertType: MyAlerts? = nil
    @State private var backgroundColor: Color = .yellow
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Button("Button 1") {
                    alertType = .error
                    showAlert.toggle()
                }
                
                Button("Button 2") {
                    alertType = .success
                    showAlert.toggle()
                }
                .alert(isPresented: $showAlert, content: {
                    getAlert()
            })
            }
            
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error!"))
        case .success:
            return Alert(title: Text("This was a success!"), dismissButton: .default(Text("OK"), action: {
                backgroundColor = .black
            }))
        default:
            return Alert(title: Text("ERROR"))
        }
//        return Alert(
//            title: Text("This is the title"),
//            message: Text("Here we will the description error"),
//            primaryButton: .destructive(Text("Delete"), action: {
//                backgroundColor = .red
//            }),
//            secondaryButton: .cancel())
    }
}

#Preview {
    AlertBootcamp()
}
