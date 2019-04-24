//
//  SubmitViewController.swift
//  SubmitValue-Stored
//
//  Created by 김광준 on 23/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit
class SubmitViewController: UIViewController {
    
    
    @IBOutlet var inputEmail: UITextField!
    @IBOutlet var isUpdate: UISwitch!
    @IBOutlet var interval: UIStepper!
    
    @IBOutlet var isUpdateLabel: UILabel!
    @IBOutlet var isIntervalLabel: UILabel!
 

    override func viewDidLoad() {
        super .viewDidLoad()
    }
    
    
 
    
    @IBAction func didTabStepper(_ sender: Any) {
        if isIntervalLabel != nil {
            isIntervalLabel.text = "\(Int(interval.value)) 분 마다"
        }
    }
    
    @IBAction func didTabSwitch(_ sender: Any) {
        if isUpdate.isOn == true {
            isUpdateLabel.text = "자동갱신"
        } else {
            isUpdateLabel.text = "자동갱신하지않음"
        }
    }
    
    @IBAction func didTabSubmitBtn(_ sender: Any) {
        let preVC = self.presentingViewController
        guard let vc = preVC as? ViewController else {
            return
        }
        
        vc.paramEmail = self.inputEmail.text
        vc.paramUpdata = self.isUpdate.isOn
        vc.paramInterval = self.interval.value
        
        self.presentingViewController?.dismiss(animated: true, completion: nil)
        
    }
    
    
}
