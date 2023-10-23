//
//  EnvironmentObjectBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 23.10.2023.
//

import SwiftUI

/*
 @EnvironmentObject ile birden fazla uzerinde data ile islem yapmak istedigimizde kullanabiliriz.
 8-9 tane farklı View uzerinden @StateObject property wrapper ile datalari cekmeye calissaydik diger ekranlarda @ObservedObject kullanacaktik, bu durumda daha fazla kod kullanimi olacakti ayni.
 EnvironmentObject kullandigimizda ise
 */

// ViewModel
class EnvironmentObjectViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    // Class cagirildigi anda calisacak func
    init() {
        getData()
    }
    
    func getData() {
        dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}

struct EnvironmentObjectBootcamp: View {
    // ViewModel'daki verilerin View'da olusturulmasi
    @StateObject var viewModel: EnvironmentObjectViewModel = EnvironmentObjectViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        // @ObservedObject kullansaydik DetailView uzerinde olusturdugumuz property wrapper'in neye esit olacagını yazmamız gerekirdi
                        DetailView(selectedItem: item)
                    } label: {
                        Text(item)
                    }
                }
            }
            .navigationTitle("iOS Devices")
        }
        /*
         .environmentObject ile ViewModel'a ulasiliyo
         */
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    // Burada sadece selectedItem ile datada bulunan isim ekrana getiriliyor. Environment kullanmasaydik @ObservedObject kullanacaktik
    let selectedItem: String
    
    var body: some View {
        // Background
        ZStack {
            Color.orange.ignoresSafeArea()
            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .padding()
                    .padding(.horizontal, 20)
                    .foregroundStyle(.orange)
                    .font(.title)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
    }
}

struct FinalView: View {
    @EnvironmentObject var viewModel: EnvironmentObjectViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.purple, .pink, .orange]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    Text(item)
                        .font(.largeTitle)
                        .bold()
                }
                .foregroundStyle(.white)
                Spacer()
            }
        }
    }
}
#Preview {
    EnvironmentObjectBootcamp()
}
