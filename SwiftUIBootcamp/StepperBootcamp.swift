//
//  StepperBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 20.10.2023.
//

import SwiftUI

struct StepperBootcamp: View {
    @State private var stepperValue: Int = 10
    @State private var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper("Stepper") {
                // increment
                increment(amount: 50)
            } onDecrement: {
                // deincrement
                increment(amount: -50)
            }

        }
    }
    
    func increment(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
        
    }
}

#Preview {
    StepperBootcamp()
}
