//
//  InitializerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 15.10.2023.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    var backgroundColor : Color
    let count : Int
    let title : String
    
    /*
     SwiftUI'da biz init kavramini yazmasakta aslinda kendisi olusturur
     Asagida default olan bir init uzerinde degisiklikler yapilarak yazilmis halidir
     */
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apples {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    // Enum ile bir pusulada bulunan yonleri kolay bir sekilde case ile tutabiliriz.
     
    enum Fruit {
        case oranges
        case apples
    }
    
    var body: some View {
        
        VStack {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(.background)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundStyle(.background)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 25.0))
    }
}

#Preview {
    HStack {
        InitializerBootcamp(count: 100, fruit: .apples)
        InitializerBootcamp(count: 60, fruit: .oranges)
    }
}
