//
//  Restaurant.swift
//  SearchCollectionView2
//
//  Created by mac on 14/06/2018.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit
class Restaurant{
    
    var title: String
    var adresse:String
    var image:UIImage
    
    init(title: String,adresse:String,image:UIImage) {
        self.title = title
        self.adresse = adresse
        self.image = image
    }
}
