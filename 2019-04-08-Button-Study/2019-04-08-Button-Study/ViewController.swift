//
//  ViewController.swift
//  2019-04-08-Button-Study
//
//  Created by 김광준 on 08/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberLabel: UILabel!
    
    var temp: Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let btn = UIButton()
        
    }

    
    @IBAction func plusBtn(_ sender: Any) {
        temp += 1
        numberLabel.text = String(temp)
        
    }
    
    
    @IBAction func minusBtn(_ sender: Any) {
        temp -= 1
        numberLabel.text = String(temp)
    }
    
}

