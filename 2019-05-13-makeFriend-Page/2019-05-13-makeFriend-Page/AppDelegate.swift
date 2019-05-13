//
//  AppDelegate.swift
//  2019-05-13-makeFriend-Page
//
//  Created by 김광준 on 13/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // 이거 외우기?
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        
        // tabBarController 추가, navigationController 추가, firstVC, addVC 추가
        let tabBarController = UITabBarController()
        let firstVC = FirstViewController()
        let addVC = AddFriendsViewController()
        
        // 네비게이션 컨트롤러의 루트뷰를 firstVC로 만들기
        let naviController = UINavigationController(rootViewController: firstVC)
        
        // tabBarController
        tabBarController.viewControllers = [naviController, addVC]
        addVC.title = "친구추가"
        
        // favorite, more tabBarItem추가
        firstVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        addVC.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 1)
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
        
        return true
    }
}

