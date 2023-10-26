//
//  IntroView.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 25.10.2023.
//

import SwiftUI

struct IntroView: View {
    @AppStorage("signed_in") var currentUserSigned = false
    
    var body: some View {
        ZStack {
            RadialGradient(
                colors: [Color("PurpleColor"), Color("BlackPurpleColor")],
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            
            if currentUserSigned {
                ProfileView()
            } else {
                OnboardingView()
            }
        }
    }
}

#Preview {
    IntroView()
}
