//
//  ResizebleSheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 27.10.2023.
//

import SwiftUI

struct ResizebleSheetBootcamp: View {
    @State private var showSheet = false
    
    var body: some View {
        Button("Click me!") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet, content: {
            MySheetView()
                // Sheet boyutu medium seklinde gelir ve durume gore buyutulebilir
                .presentationDetents([.medium, .large])
                .presentationCornerRadius(40)
                .presentationDragIndicator(.visible) // sheet uzerinde cıkan cizgiyi gizler ya da gosterir
                .presentationBackground(.indigo)
                /*
                 True oldugunda acilan sheet kullanici tarafindan kapanamaz.
                 Sheet'te bu ozellik, uygulama belirli sure free kullanildiktan sonra veya belirli bir asamadan sonra ucretli hale gelmesi ile odeme yapilmasi gerektiginde kullanililabilir. Odeme yapildiktan sonra sheetin bu ozelligi false olur ve uygulamayi kullanmaya kaldigi yerden devam edilebilir.
                 */
                .interactiveDismissDisabled(true)
            
        })

    }
}

struct MySheetView: View {
    var body: some View {
        ZStack {
//            Color.purple
//                .ignoresSafeArea()
            Text("Heyyy, Here i am")
                .font(.headline)
                .fontWeight(.bold)
            
        }
    }
}

#Preview {
    ResizebleSheetBootcamp()
}
