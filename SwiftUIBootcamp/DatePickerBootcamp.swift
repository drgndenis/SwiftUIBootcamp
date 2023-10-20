//
//  DatePickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denis DRAGAN on 20.10.2023.
//

import SwiftUI

struct DatePickerBootcamp: View {
    @State private var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2020)) ?? Date()
    let endDate: Date = Date()
    
    var body: some View {
        VStack {
            /*
             Ilk secenekte olan durumda. Takvim ve saatin default halde kullanılabilecegine bir ornek
             2. senecekte bulunan datepicker'da ekranda neyi gostermek istedigimizi secebiliyoruz.
                displayedComponents ile tarih veya saat secimi yapabiliriz ya da bunlardan birini secebiliriz.
             3. secenekte ise takvimde yilin belli araliklari arasinda secim yapabilmeyi sagliyoruz
             */
//            DatePicker("Pick your date", selection: $selectedDate)
//            DatePicker("Selecst a date", selection: $selectedDate, displayedComponents: [.date])
            DatePicker("Select a date", selection: $selectedDate, in: startingDate...endDate)
                // .tint(.cyan)
                .datePickerStyle(.graphical)
        }
        .padding()
    }
}

#Preview {
    DatePickerBootcamp()
}
