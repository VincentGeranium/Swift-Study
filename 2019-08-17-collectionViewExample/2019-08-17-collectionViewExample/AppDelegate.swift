//
//  AppDelegate.swift
//  2019-08-17-collectionViewExample
//
//  Created by 김광준 on 17/08/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow.init(frame: UIScreen.main.bounds)
        
        let mainVC = GridViewController()
        
        window?.rootViewController = mainVC
        
        window?.makeKeyAndVisible()
        
        return true
    }



}

