//
//  ContentView.swift
//  planner
//
//  Created by martin on 2024/04/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TodoView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("할 일")
                }

            AddView()
                .tabItem {
                    Image(systemName: "plus.circle")
                    Text("추가")
                }

            HistoryView()
                .tabItem {
                    Image(systemName: "clock.arrow.circlepath")
                    Text("기록")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
