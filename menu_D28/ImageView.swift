//
//  ImageView.swift
//  menu_D28
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/18.
//

import SwiftUI

struct ImageView: View {
    
    @Binding var selectedImage:String
    @Binding var sheetVisible:Bool
    
    var body: some View {
        
        Image(selectedImage)
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .ignoresSafeArea()
    }
}

#Preview {
    ImageView(selectedImage: Binding.constant("gallery1"), sheetVisible: Binding.constant(true))
}
