//
//  ViewModelBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 22.10.2023.
//

import SwiftUI

// Datalarin olusturulması
struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

/*
 ViewModel'a view uzerinde degisiklik olacaklarin Model uzerinden cekilip verilerin girilmesi.
 ViewModel'da class kullanilmasinin sebebi verilerin Ram'de aynı yere yazilmasidir. ViewModel her cagirildiginda Ramde baska bir alan acmaz aynı yeri gosterir ve kullanilir.
 Struct kullanildiginda ise ayni degisken veya veri birden fazla defa cagirildiginda RAM'de farkli alani gosterir ve RAM'de daha fazla yer kaplar
 */
class FruitViewModel: ObservableObject {
    // View ile paylasilmasi icin @Published kullanilir
    @Published var fruits: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruit()
    }
    
    // Meyve datasinin getirilmesi
    func getFruit() {
        let strawberry = FruitModel(name: "Strawberry", count: 25)
        let watermelon = FruitModel(name: "Watermelon", count: 52)
        let apple = FruitModel(name: "Apples", count: 8)
        let orange = FruitModel(name: "Orange", count: 5)
        let banana = FruitModel(name: "Banana", count: 12)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: { // Ekranda progressview 3 saniye gosterilir ve ardindan datalar gelir
            self.fruits.append(strawberry)
            self.fruits.append(watermelon)
            self.fruits.append(apple)
            self.fruits.append(orange)
            self.fruits.append(banana)
            self.isLoading = false // isLoading degiskeni false olmasi ile verilerin ekrana yazilmasi
        })
    }
    
    // Secilen ogenin silinmesi
    func deleteFruit(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
}

struct ViewModelBootcamp: View {
    // Datalar ekrana ilk defa getirilecekse @StateObject yazilir. Baska ekranlarda bu data bilgileri kullanilacaksa @ObservedObject kullanilir.
    // @StateObject -> USE THIS ON CREATION / INIT
    // @ObservedObject -> USE FOR THIS SUBVIEWS
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruits) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            Text(fruit.name)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Fruit List")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: RandomScreen(fruitViewModel: fruitViewModel)) {
                        Image(systemName: "arrow.right")
                            .tint(.primary)
                    }
                }
            }
        }
    }
}

struct RandomScreen: View {
    @ObservedObject var fruitViewModel: FruitViewModel
    
    
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            VStack {
                ForEach(fruitViewModel.fruits) { fruit in
                    Text(fruit.name)
                }
            }
        }
    }
}

#Preview {
    ViewModelBootcamp()
}
