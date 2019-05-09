//
//  ViewController.swift
//  2019-05-09-Singleton-Study
//
//  Created by 김광준 on 09/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var singletonFirstVC = Singleton.shared
    
    @IBOutlet weak var firstVCTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstVCTextField.textAlignment = .center
        firstVCTextField.placeholder = "입력해주세요"
        firstVCTextField.font = UIFont.boldSystemFont(ofSize: 15)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let transferString = firstVCTextField.text {
            singletonFirstVC.singletonProperty = transferString
        }
    }
    
    @IBAction func unwindToSecondVC(_ unwindSegue: UIStoryboardSegue) {
        
    }

}

