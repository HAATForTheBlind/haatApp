//
//  ContentView.swift
//  haatApp
//
//  Created by Reza Madhavan on 10/5/19.
//  Copyright © 2019 Reza Madhavan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    var strings = ["one", "two", "three", "four", "five"]
    var body: some View {
        TabView(selection: $selection){
            Text("First View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("first")
                        Text("First")
                    }
                }
            .tag(1)
            Text("Second View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Secondddd")
                    }
                }
                .tag(0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
