//
//  OrinigiView.swift
//  menu_D28
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/18.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var selectedItem:String
    @Binding var selectedName:String
    @Binding var selectedPrice:String
    @Binding var sheetVisible:Bool
    var body: some View {
        VStack(alignment: .leading){
            Image(selectedItem)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(30)
            Spacer()
            VStack {
                VStack {
                    Text(selectedItem)
                        .font(.largeTitle)
                        .foregroundColor(.brown)
                        .bold()
                        .padding()
            
                    Text("$" + selectedPrice)
                        .bold()
                        .padding(.horizontal)
                }
                
                Spacer()
            }
            
            Spacer()
            
            
        }.ignoresSafeArea()
    }
}

#Preview {
    DetailView(selectedItem: Binding.constant("hamachi-sushi"), selectedName: Binding.constant("Hamachi Sushi"), selectedPrice: Binding.constant("6.99"), sheetVisible: Binding.constant(true))
}
