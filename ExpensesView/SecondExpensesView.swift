//
//  SecondExpensesView.swift
//  SmartFinance
//
//  Created by Mac on 31.01.2023.
//

import SwiftUI

struct SecondExpensesView: View {
    var body: some View {
        VStack{
            Spacer(minLength: 50)
            Button("Show all") {
                
            }
            .padding(10)
            .colorMultiply(.purple)
            Spacer()
            List{

                Text("Expenses")
            }
            .foregroundColor(.purple)
        }
    }
}

struct SecondExpensesView_Previews: PreviewProvider {
    static var previews: some View {
        SecondExpensesView()
    }
}
