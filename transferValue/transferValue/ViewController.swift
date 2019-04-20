//
//  ViewController.swift
//  transferValue
//
//  Created by 김광준 on 20/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    let secondVC = SecondViewController()
    
    let emailLabel = UILabel()
    let autoRenewalLabel = UILabel()
    let renewalCycleLabel = UILabel()
    
    let emailTextField = UITextField()
    let subAutoRenewalLabel = UILabel()
    let subRenewalCycleLabel = UILabel()
    
    let autoRenewalSwitch = UISwitch()
    let subRenewalCycleStepper = UIStepper()
    let submitButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
       emailLabel.frame = CGRect(x: 20,
                                  y: 234,
                                  width: 45,
                                  height: 21)
        emailLabel.text = "이메일"
        emailLabel.textColor = .black
        emailLabel.textAlignment = .center
        emailLabel.font = UIFont.boldSystemFont(ofSize: 17)
        view.addSubview(emailLabel)
        
        autoRenewalLabel.frame = CGRect(x: 20,
                                        y: 336,
                                        width: 59,
                                        height: 21)
        autoRenewalLabel.text = "자동갱신"
        autoRenewalLabel.textColor = .black
        autoRenewalLabel.textAlignment = .center
        autoRenewalLabel.font = UIFont.boldSystemFont(ofSize: 17)
        view.addSubview(autoRenewalLabel)
        
        renewalCycleLabel.frame = CGRect(x: 20,
                                         y: 438,
                                         width: 59,
                                         height: 21)
        renewalCycleLabel.text = "갱신주기"
        renewalCycleLabel.textColor = .black
        renewalCycleLabel.textAlignment = .center
        renewalCycleLabel.font = UIFont.boldSystemFont(ofSize: 17)
        view.addSubview(renewalCycleLabel)
        
        emailTextField.frame = CGRect(x: 94,
                                      y: 234,
                                      width: 300,
                                      height: 30)
//        emailTextField.borderStyle = .bezel
//        emailTextField.borderStyle = .line
//        emailTextField.borderStyle = .none
        emailTextField.borderStyle = .roundedRect // textfield의 겉에 프레임 스타일
        emailTextField.placeholder = "이메일을 입력해 주세요"
        view.addSubview(emailTextField)
        
        subAutoRenewalLabel.frame = CGRect(x: 94,
                                           y: 336,
                                           width: 178,
                                           height: 21)
        subAutoRenewalLabel.text = "자동갱신"
        subAutoRenewalLabel.textAlignment = .center
        view.addSubview(subAutoRenewalLabel)
        
        subRenewalCycleLabel.frame = CGRect(x: 94,
                                            y: 438,
                                            width: 178,
                                            height: 21)
        subRenewalCycleLabel.text = "0분마다"
        subRenewalCycleLabel.textAlignment = .center
        view.addSubview(subRenewalCycleLabel)
        
        autoRenewalSwitch.frame.origin = CGPoint(x: 345, y: 336)
        autoRenewalSwitch.isOn = true // 스위치를 기본으로 켜저있는 상태로 화면에 처음 보여지게 만드는 코드
        autoRenewalSwitch.addTarget(self, action: #selector(didTabautoRenewalSwitch), for: .touchUpInside)
        view.addSubview(autoRenewalSwitch)
        
        subRenewalCycleStepper.frame.origin = CGPoint(x: 300, y: 438)
        subRenewalCycleStepper.addTarget(self, action: #selector(didTabRenewalCycleStepper), for: .valueChanged)
        view.addSubview(subRenewalCycleStepper)
        
        submitButton.frame = CGRect(x: 183, y: 531, width: 70, height: 30)
        submitButton.setTitle("Submit", for: .normal)
        submitButton.backgroundColor = .blue
        submitButton.setTitleColor(.white, for: .normal)
        submitButton.addTarget(self, action: #selector(didTabSubmitButton), for: .touchUpInside)
        view.addSubview(submitButton)
    }
    
    @objc func didTabautoRenewalSwitch() {
        if autoRenewalSwitch.isOn == false {
            subAutoRenewalLabel.text = "자동갱신하지않음"
        } else {
            subAutoRenewalLabel.text = "자동갱신"
        }
    }
    
    @objc func didTabRenewalCycleStepper() {
        let value = Int(subRenewalCycleStepper.value)
        self.subRenewalCycleLabel.text = "\(value)분 마다 갱신"
        
    }
    
    @objc func didTabSubmitButton() {
        self.present(secondVC, animated: true)
        secondVC.emailValueLabel.text = emailTextField.text
        secondVC.subAutoRenewalLabel.text = subAutoRenewalLabel.text
        secondVC.subRenewalCycleLabel.text = subRenewalCycleLabel.text
    }

}

