//
//  Product.swift
//  GoodAsOldPhones
//
//  Copyright © 2016 Code School. All rights reserved.
//

import Foundation

class Product {
    var name: String?
    var ImageName: String?
    var largeImageName: String?
    
    init(name: String, ImageName: String, largeImageName: String) {
        self.name = name
        self.ImageName = ImageName
        self.largeImageName = largeImageName
    }
}
