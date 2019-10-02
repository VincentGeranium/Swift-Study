//
//  ViewController.swift
//  jsonParsingExample
//
//  Created by 김광준 on 01/10/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
// getJSON
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        
        let FullPath = "/Users/vincent_geranium/Desktop/person.json"
        
        if let contents = try? String(contentsOfFile: FullPath) {
            print(contents)
        }
        
        if let data = try? String(contentsOfFile: FullPath).data(using: .utf8) {
            
            let json = try!JSONSerialization.jsonObject(with: data, options: []) as! [String : Any]
            print(json)
        }
    }
}

