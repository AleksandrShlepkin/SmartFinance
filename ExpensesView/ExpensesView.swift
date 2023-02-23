//
//  ExpensesView.swift
//  SmartFinance
//
//  Created by Mac on 31.01.2023.
//

import SwiftUI

struct ExpensesView: View {
    @State private var testItem = false
    @State private var mouths = 3
    private let mouthsName = ["Sep","Oct","Nov","Dec"]
    
    
    var body: some View {
        
        ZStack {
            VStack {
                Picker(selection: $mouths, label: Text("")) {
                    ForEach(0..<mouthsName.count) { index in
                        Text("\(self.mouthsName[index])")
                    }
                }
                .pickerStyle(.segmented)
                .padding(.horizontal, 10)
                
                Spacer()
                
                Button("Add") {
                    testItem.toggle()
                }
                .sheet(isPresented: $testItem) {
                    SecondExpensesView()
                        .presentationDetents([.medium])
                }
            }
        }
    }
    
}

struct ExpensesView_Previews: PreviewProvider {
    static var previews: some View {
        ExpensesView()
    }
}
