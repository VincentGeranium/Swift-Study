//
//  SecondViewController.swift
//  2019-05-09-Singleton-Study
//
//  Created by 김광준 on 09/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    let singletonSecondVC = Singleton.shared
    
    @IBOutlet weak var secondVCLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondVCLabel.text = singletonSecondVC.singletonProperty
    }
    
    

    
}
