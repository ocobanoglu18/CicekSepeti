//
//  ContentView.swift
//  Ex
//
//  Created by Adnan Cobanoglu on 12.01.2023.
//

import SwiftUI




struct ContentView: View {
var body: some View {
        TabView{
            MainPage()
                .tabItem {
                    Image(systemName: "house")
                }
            Categories()
                .tabItem {
                    Image(systemName: "list.dash")
                }
            Profile()
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .accentColor(Color.black)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
