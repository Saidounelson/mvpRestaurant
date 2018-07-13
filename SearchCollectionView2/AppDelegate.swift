//
//  AppDelegate.swift
//  SearchCollectionView2
//
//  Created by mac on 14/06/2018.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        UINavigationBar.appearance().barTintColor  = UIColor(red: 254.0/255.0, green: 83.0/255.0, blue: 13.0/255.0, alpha: 1.0)
        UINavigationBar.appearance().tintColor = UIColor.white
   //    UINavigationBar.appearance().tit
        return true
    }

}


