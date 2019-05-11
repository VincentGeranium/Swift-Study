//
//  SecondViewController.swift
//  2019-05-11-UserDefault-Study
//
//  Created by 김광준 on 11/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

class SecondViewControllr: UIViewController {
    
    
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        countLabel.textColor = .black
        
        let tempData = UserDefaults.standard
        
        countLabel.text = tempData.string(forKey: "tf")
    }
    
    
}
