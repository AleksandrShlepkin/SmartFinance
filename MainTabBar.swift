//
//  ContentView.swift
//  SmartFinance
//
//  Created by Mac on 29.01.2023.
//

import SwiftUI

struct MainTabBar: View {
    
    @State private var selectedButton = 0
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                HStack {
                    Button(action: {
                        self.selectedButton = 0
                    }) {
                        Image("dollar")
                            
                    }.foregroundColor(self.selectedButton == 0 ? .black : .gray)
                    Spacer(minLength: 12)
                    
                    Button(action: {
                        self.selectedButton = 1
                    }) {
                        Image("statistics")
                    }.foregroundColor(self.selectedButton == 1 ? .black : .gray)
                }
            }
        }
        //        TabView {
        //            ExpensesView()
        //                .tabItem {
        //                    Text("First")
        //                }
        //            StatisticsView()
        //                .tabItem {
        //                    Text("Second")
        //                }
        //        }
        //        .font(.headline)
        //        .accentColor(.purple)
        
    }
}

struct MainTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBar()
    }
}
