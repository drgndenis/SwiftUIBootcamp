//
//  ActionSheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 19.10.2023.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    @State private var isShowingDialog = false
    @State private var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30)
                Text("@username")
                Spacer()
                
                Button(action: {
                    actionSheetOption = .isMyPost
                    isShowingDialog.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .tint(.primary)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.2, contentMode: .fit)
        }
        .confirmationDialog(
            "What woud you like to do?",
            isPresented: $isShowingDialog,
            // If we do not set the Visibility section to .visible, the message will not appear. The default value is .automatic
            titleVisibility: .visible
        ) {
            let shareButton = Button("Share") {
                // Add code to share post
            }
            let reportButton = Button("Report", role: .destructive) {
                // add code to report this post
            }
            let deleteButton = Button("Delete", role: .destructive) {
                // add code to delete this post
            }
            
            switch actionSheetOption {
            case .isMyPost:
                shareButton
                reportButton
                deleteButton
            case .isOtherPost:
                shareButton
                reportButton
            }
        }
    }
}

#Preview {
    ActionSheetBootcamp()
}
