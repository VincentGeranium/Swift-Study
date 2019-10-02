//
//  ViewController.swift
//  jsonParsingExample-2
//
//  Created by 김광준 on 02/10/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    var nameArr = [String]()
    var ageArr = [String]()
    var sexArr = [String]()
    var friends = [String : Any]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        
        let path = Bundle.main.path(forResource: "friends", ofType: "json")
        
        if let data = try? String(contentsOfFile: path!).data(using: .utf8) {
            let json = try! JSONSerialization.jsonObject(with: data, options: []) as! [String : Any]
            friends = json
        }
        
        if let friend = friends["friend"] as? [[String : String]] {
            for friendIndex in friend {
                nameArr.append(friendIndex["name"] as! String)
                
                ageArr.append(friendIndex["age"] as! String)
                
                sexArr.append(friendIndex["sex"] as! String)
            }
        }
        
        print("내 친구들의 이름 : \(nameArr)")
        print("내 친구들의 나이 : \(ageArr)")
        print("내 친구들의 성별 : \(sexArr)")
        
    }


}

