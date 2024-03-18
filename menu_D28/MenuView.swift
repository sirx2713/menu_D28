//
//  MenuVies.swift
//  menu_D28
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/18.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems = [MenuLogic]()
    @State var selectedItem = ""
    @State var selectedName = ""
    @State var selectedPrice = ""
    @State var sheetVisible = false
    
    
    
    var menuData = DataFile()
    
    var body: some View {
        
        NavigationStack{
            List(menuItems){item in
                
                HStack{
                    Image(item.imageName)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .cornerRadius(10)
                    Text(item.name)
                        .bold()
                    Spacer()
                    Text("$" + item.price)
                }.onTapGesture {
                    sheetVisible = true
                    selectedItem = item.imageName
                    selectedName = item.name
                    selectedPrice = item.price
                }
            }
            .sheet(isPresented: $sheetVisible, content: {
                DetailView(selectedItem: $selectedItem, selectedName: $selectedName, selectedPrice: $selectedPrice, sheetVisible: $sheetVisible)
            })
            .onAppear(perform: {
                menuItems = menuData.menuFile()
            })
        }
    }
}

#Preview {
    MenuView()
}
