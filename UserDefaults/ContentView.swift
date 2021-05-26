//
//  ContentView.swift
//  UserDefaults
//
//  Created by Jundana Al-Basyir on 25/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Welcome")
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Home")
                }
            UserSetting()
                .tabItem {
                    Image(systemName: "person")
                    Text("Setting")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
