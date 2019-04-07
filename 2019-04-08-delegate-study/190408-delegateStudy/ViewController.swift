//
//  ViewController.swift
//  190408-delegateStudy
//
//  Created by 김광준 on 08/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var printLabel: UILabel!
    
    @IBAction func didTapButton(_ sender: Any) {
//        printLabel.text = textField.text
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        printLabel.text = textField.text
        return true
    }
    
}
    

