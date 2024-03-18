//
//  GalleryView.swift
//  menu_D28
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/18.
//

import SwiftUI

struct GalleryView: View {
    
    @State var galleryItems = [GalleryLogic]()
    @State var selectedImage = ""
    @State var sheetVisible = false
    var galleryData = DataFile()
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(spacing: 10), GridItem(spacing: 10)], spacing: 20){
                    ForEach(galleryItems){pic in
                        Image(pic.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                            .padding(.horizontal, 5)
                            .onTapGesture {
                                selectedImage = pic.imageName
                                sheetVisible = true
                            }
                        
                    }
                }.onAppear(perform: {
                    galleryItems = galleryData.galleryFile()
                })
                .sheet(isPresented: $sheetVisible, content: {
                    ImageView(selectedImage: $selectedImage, sheetVisible: $sheetVisible)
                })
            }.ignoresSafeArea()
        }
    }
}

#Preview {
    GalleryView()
}
