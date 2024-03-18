//
//  SushiApp.swift
//  menu_D28
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/18.
//

import SwiftUI

struct SushiApp: View {
    var body: some View {
        
        NavigationStack{
            VStack{
                Spacer()
                NavigationLink {
                    MainView()
                } label: {
                    VStack {
                        Image("logo")
                            .resizable()
                        .aspectRatio(contentMode: .fit)
                        Text("Hungry Already?")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .bold()
                        Text("Sushi is ready!")
                    }.navigationTitle(
                        ("Home")
                    )
                    .navigationBarTitleDisplayMode(.inline)
                }.foregroundColor(.red)
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    SushiApp()
}
