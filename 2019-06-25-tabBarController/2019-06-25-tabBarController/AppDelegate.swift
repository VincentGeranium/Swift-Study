//
//  AppDelegate.swift
//  2019-06-25-tabBarController
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
        window?.backgroundColor = .white
        
        let tabBarController = UITabBarController()
        let firstVC = FirstViewController()
        let secondVC = SecondViewController()
        
        tabBarController.viewControllers = [firstVC, secondVC]
        
        firstVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        secondVC.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 1)
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
        
        return true
    }



}

