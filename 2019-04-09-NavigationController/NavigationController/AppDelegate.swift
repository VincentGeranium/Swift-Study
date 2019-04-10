//
//  AppDelegate.swift
//  NavigationController
//
//  Created by 김광준 on 05/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        
        let vc = ViewController()
        let naviController = UINavigationController(rootViewController: vc)
        window?.rootViewController = naviController
        window?.makeKeyAndVisible()
        
        
        return true
    }

}
