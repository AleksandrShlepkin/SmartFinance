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
        
                TabView {
                    ExpensesView()
                        .tabItem {
                            Text("First")
                            
                        }
                    StatisticsView()
                        .tabItem {
                            Text("Second")
                        }
                    CardView()
                        .tabItem {
                            Text("Third")
                        }
                }
                .font(.headline)
                .accentColor(.purple)
    }
}

struct MainTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBar()
    }
}
