//
//  SecondViewController.swift
//  2019-05-27-UIWindow-And-UIButton-ByCode
//
//  Created by 김광준 on 27/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var secondLabel = UILabel()
    var secondButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(secondLabel)
        view.addSubview(secondButton)
        view.backgroundColor = .white
        autoLayout()
        secondLblConfiguration()
        secondBtnConfiguration()
    }
    
    private func autoLayout() {
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        
        secondLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 1).isActive = true
        secondLabel.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: 1).isActive = true
        secondLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        secondLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        secondButton.translatesAutoresizingMaskIntoConstraints = false
        
        secondButton.topAnchor.constraint(equalTo: secondLabel.bottomAnchor, constant: 50).isActive = true
        secondButton.centerXAnchor.constraint(equalTo: secondLabel.centerXAnchor).isActive = true
        secondButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        secondButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        
    }
    
    private func secondLblConfiguration() {
        secondLabel.text = "SecondVC"
        secondLabel.textColor = .black
        secondLabel.textAlignment = .center
        secondLabel.font = UIFont.boldSystemFont(ofSize: 30)
        secondLabel.backgroundColor = .brown
    }
    
    private func secondBtnConfiguration() {
        secondButton.setTitle("DismiSS", for: .normal)
        secondButton.setTitleColor(.red, for: .normal)
        secondButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        secondButton.backgroundColor = .black
        secondButton.addTarget(self, action: #selector(didTabBtn(_:)), for: .touchUpInside)
    }
    
    @objc func didTabBtn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
