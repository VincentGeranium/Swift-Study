//
//  ViewController.swift
//  2019-05-15-TapBarController-Study
//
//  Created by 김광준 on 15/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    

    @IBAction func didTapGoToSecondVC(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
    }
    
}

