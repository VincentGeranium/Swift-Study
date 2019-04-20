//
//  SecondViewController.swift
//  transferValue
//
//  Created by 김광준 on 20/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit
final class SecondViewController: UIViewController {

    
    
    let emailLabel = UILabel()
    let autoRenewalLabel = UILabel()
    let renewalCycleLabel = UILabel()
    
    let emailValueLabel = UILabel()
    let subAutoRenewalLabel = UILabel()
    let subRenewalCycleLabel = UILabel()
    
    let backButton = UIButton()
    
    override func viewDidLoad() {
            super.viewDidLoad()
        
        view.backgroundColor = .white
        
        emailLabel.frame = CGRect(x: 31,
                                  y: 180,
                                  width: 45,
                                  height: 21)
        emailLabel.text = "이메일"
        emailLabel.textColor = .black
        emailLabel.textAlignment = .center
        emailLabel.font = UIFont.boldSystemFont(ofSize: 17)
        view.addSubview(emailLabel)
        
        emailValueLabel.frame = CGRect(x: 105,
                                       y: 180,
                                       width: 253,
                                       height: 21)
        emailValueLabel.text = "----"
        emailValueLabel.textColor = .black
        emailValueLabel.textAlignment = .center
        view.addSubview(emailValueLabel)
        
        autoRenewalLabel.frame = CGRect(x: 31,
                                        y: 280,
                                        width: 59,
                                        height: 21)
        autoRenewalLabel.text = "자동갱신"
        autoRenewalLabel.textColor = .black
        autoRenewalLabel.textAlignment = .center
        autoRenewalLabel.font = UIFont.boldSystemFont(ofSize: 17)
        view.addSubview(autoRenewalLabel)
        
        subAutoRenewalLabel.frame = CGRect(x: 105,
                                           y: 282,
                                           width: 253,
                                           height: 21)
        subAutoRenewalLabel.text = "----"
        subAutoRenewalLabel.textColor = .black
        subAutoRenewalLabel.textAlignment = .center
        view.addSubview(subAutoRenewalLabel)
        
        renewalCycleLabel.frame = CGRect(x: 31,
                                         y: 380,
                                         width: 59,
                                         height: 21)
        renewalCycleLabel.text = "갱신주기"
        renewalCycleLabel.textColor = .black
        renewalCycleLabel.textAlignment = .center
        renewalCycleLabel.font = UIFont.boldSystemFont(ofSize: 17)
        view.addSubview(renewalCycleLabel)
        
        subRenewalCycleLabel.frame = CGRect(x: 105,
                                            y: 382,
                                            width: 253,
                                            height: 21)
        subRenewalCycleLabel.text = "-----"
        subRenewalCycleLabel.textColor = .black
        subRenewalCycleLabel.textAlignment = .center
        view.addSubview(subRenewalCycleLabel)
        
        backButton.frame = CGRect(x: 183, y: 531, width: 70, height: 30)
        backButton.setTitle("Back", for: .normal)
        backButton.setTitleColor(.white, for: .normal)
        backButton.backgroundColor = .blue
        backButton.addTarget(self, action: #selector(didTabBackButton), for: .touchUpInside)
        view.addSubview(backButton)
    }
    
    @objc func didTabBackButton() {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
}
