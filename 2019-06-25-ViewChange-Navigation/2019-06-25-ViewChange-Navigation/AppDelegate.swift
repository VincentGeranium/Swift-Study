//
//  AppDelegate.swift
//  2019-06-25-ViewChange-Navigation
//
//  Created by 김광준 on 25/06/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow.init(frame: UIScreen.main.bounds)
        
        let firstVC = FirstViewController()
        let naviController = UINavigationController(rootViewController: firstVC)
        
        window?.rootViewController = naviController
        window?.makeKeyAndVisible()
        
        return true
    }

  


}

