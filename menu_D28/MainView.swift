//
//  ContentView.swift
//  menu_D28
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/18.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            MenuView()
                .tabItem {
                    VStack {
                        Image(systemName: "menucard")
                        Text("Sushi MENU")
                    }
                }
            GalleryView()
                .tabItem {
                    VStack {
                        Image(systemName: "photo.stack")
                        Text("Gallery")
                    }
                }
        }
    }
}

#Preview {
    MainView()
}
