//
//  DataFile.swift
//  menu_D28
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/18.
//

import Foundation

struct DataFile{
    
    func menudata() -> [MenuLogic]{
        
        return [
            
            MenuLogic(name: "Onigiri", price: "1.99", imageName: "onigiri"),
            MenuLogic(name: "Meguro Sushi", price: "5.99", imageName: "meguro-sushi"),
            MenuLogic(name: "Tako Sushi", price: "4.99", imageName: "tako-sushi"),
            MenuLogic(name: "Avocado Maki", price: "2.99", imageName: "avocado-maki"),
            MenuLogic(name: "Tobiko Spicy Maki", price: "4.99", imageName: "tobiko-spicy-maki"),
            MenuLogic(name: "Salmon Sushi", price: "4.99", imageName: "salmon-sushi"),
            MenuLogic(name: "Hamachi Sushi", price: "6.99", imageName: "hamachi-sushi"),
            MenuLogic(name: "Kani Sushi", price: "3.99", imageName: "kani-sushi"),
            MenuLogic(name: "Tamago Sushi", price: "3.99", imageName: "tamago-sushi"),
            MenuLogic(name: "California Roll", price: "3.99", imageName: "california-roll"),
            MenuLogic(name: "Shrimp Sushi", price: "3.99", imageName: "shrimp-sushi"),
            MenuLogic(name: "Ikura Sushi", price: "5.99", imageName: "ikura-sushi")
        
        ]
    }
    
    func gallerydata() -> [GalleryLogic]{
        
        return [
        
        GalleryLogic(imageName: "gallery1"),GalleryLogic(imageName: "gallery2"),GalleryLogic(imageName: "gallery3"),
        GalleryLogic(imageName: "gallery4"),GalleryLogic(imageName: "gallery5"),GalleryLogic(imageName: "gallery6"),
        GalleryLogic(imageName: "gallery7"),GalleryLogic(imageName: "gallery8"),GalleryLogic(imageName: "gallery9"),
        GalleryLogic(imageName: "gallery10"),GalleryLogic(imageName: "gallery11")
        
        ]
    }
    
        //JSON file for MenuLogic
    func menuFile() -> [MenuLogic]{
        
        if let url = Bundle.main.url(forResource: "menuData", withExtension: "json"){
            do{
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                do{
                    let items = try decoder.decode([MenuLogic].self, from: data)
                    return items
                }
                catch{
                    print("Could not parse the JSON: \(error)")
                }
            }
            catch{
                print("404: \(error)")
            }
        }
        
        return [MenuLogic]()
    }
    
    //JSON file for GalleryLogic
func galleryFile() -> [GalleryLogic]{
    
    if let url = Bundle.main.url(forResource: "galleryData", withExtension: "json"){
        do{
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            do{
                let pics = try decoder.decode([GalleryLogic].self, from: data)
                return pics
            }
            catch{
                print("Could not parse the JSON: \(error)")
            }
        }
        catch{
            print("404: \(error)")
        }
    }
    
    return [GalleryLogic]()
}
}
