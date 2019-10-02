//
//  MakeJSONDataViewController.swift
//  jsonParsingExample
//
//  Created by 김광준 on 01/10/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

class MakeJSONDataViewController: UIViewController {
    
    var persons = [String : Any]()
    var nameArr = [String]()
    var ageArr = [String]()
    var employedArr = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray

        let path = Bundle.main.path(forResource: "person", ofType: "json")
        
        if let data = try? String(contentsOfFile: path!).data(using: .utf8) {
            let json = try! JSONSerialization.jsonObject(with: data, options: []) as! [String : Any]
            print(json)
            persons = json
        }
        
        if let person = persons["person"] as? [[String : Any]] {
            for personindex in person {
                nameArr.append(personindex["name"] as! String)
                ageArr.append(personindex["age"] as! String)
                employedArr.append(personindex["employed"] as! String)
            }
        }
    }
}
