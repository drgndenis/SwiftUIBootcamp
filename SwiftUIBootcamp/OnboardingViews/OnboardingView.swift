//
//  OnboardingView.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 25.10.2023.
//

import SwiftUI

struct OnboardingView: View {
    
    // Onboarding states:
    /*
     0 - Welcome screen
     1 - Add name
     2 - Add age
     3 - Add gender
     */
    
    @State var onboardingState = 3
    @State var name = ""
    @State var age: Float = 50
    @State var gender = ""
    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                case 1:
                    addNameSection
                case 2:
                    addAgeSection
                case 3:
                    addGenderSection
                default:
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundStyle(.blue)
                }
            }
            
            // buttons
            VStack {
                Spacer()
                bottomButton
            }
            .padding(30)
        }
    }
}

#Preview {
    OnboardingView()
        .background(.purple)
}

// MARK: COMPONENTS
extension OnboardingView {
    
    private var bottomButton: some View {
        Text("Sign In")
            .font(.headline)
            .foregroundStyle(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.windowBackground)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            .onTapGesture {
                onboardingState += 1
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundStyle(.windowBackground)
            
            TextView(textName: "Find your match.", fontWeight: .semibold, font: .largeTitle)
                .underline()
            
            TextView(textName: "This is #1 app for finding your match online! In this tutorial we are practicing using App Storage and other SwiftUI techniques.", fontWeight: .medium, font: nil)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center) // Çok satirli yazilari ortaya hizalar
        .padding(40)
    }
    
    private var addNameSection: some View {
        VStack {
            Spacer()
            TextView(textName: "What's your name?", fontWeight: .semibold, font: .largeTitle)
            
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(.windowBackground)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack {
            Spacer()
            TextView(textName: "What's your age?", fontWeight: .semibold, font: .largeTitle)
            
            TextView(textName: String(format: "%.0f", age), fontWeight: .semibold, font: .largeTitle)
            
            Slider(value: $age, in: 18...100, step: 1)
                .tint(.white)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 20) {
            Spacer()
            TextView(textName: "What's your gender?", fontWeight: .semibold, font: .largeTitle)
            
            
            Picker(selection: $gender) {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
            } label: {
                Text(gender.count > 1 ? gender : "Select a gender")
            }
            .tint(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.windowBackground)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            .pickerStyle(.menu)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
}

struct TextView: View {
    let textName: String
    let fontWeight: Font.Weight
    let font: Font?
    
    var body: some View {
        Text(textName)
            .font(font)
            .fontWeight(fontWeight)
            .foregroundStyle(.windowBackground)
    }
}
