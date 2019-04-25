//
//  FromViewController.swift
//  SubmitValue-UserDefaults
//
//  Created by 김광준 on 24/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class FromViewController: UIViewController {
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var updateLabel: UILabel!
    @IBOutlet var intervalLabel: UILabel!
    
    
    @IBOutlet var updateSwitch: UISwitch!
    @IBOutlet var intervalStepper: UIStepper!
    
    let ad = UIApplication.shared.delegate as? AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTabSwitch(_ sender: Any) {
        updateLabel.text = updateSwitch.isOn == true ? "자동갱신" : "갱신하지않음"

    }
    
    @IBAction func didTabStepper(_ sender: Any) {
        intervalLabel.text = "\(Int(intervalStepper.value)) 분 마다"

        
    }
    
    @IBAction func didTabSubmitBtn(_ sender: Any) {
        // 앱 델리게이트를 통한 값 전달
//        let ad = UIApplication.shared.delegate as? AppDelegate
//        ad?.paramEmail = self.emailTextField.text
//        ad?.paramUpdate = self.updateSwitch.isOn
//        ad?.paramInterval = self.intervalStepper.value
        // UserDefault 를 통한 값 전달
        
        // UserDefault 객체의 인스턴스를 가져온다
        let ud = UserDefaults.standard
        
        // 값을 저장
        ud.set(self.emailTextField.text, forKey: "Email")
        ud.set(self.updateSwitch.isOn, forKey: "Update")
        ud.set(self.intervalStepper.value, forKey: "Interval")
        
        // 이전 화면으로 복귀
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
}
