//
//  RestaurantsNavigationControlle.swift
//  SearchCollectionView2
//
//  Created by mac on 16/06/2018.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class RestaurantsNavigationControlle: UINavigationController {

    override var preferredStatusBarStyle: UIStatusBarStyle{
        return topViewController?.preferredStatusBarStyle ?? .lightContent
    }
    
}
