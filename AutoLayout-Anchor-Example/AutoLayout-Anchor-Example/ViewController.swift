//
//  ViewController.swift
//  AutoLayout-Anchor-Example
//
//  Created by 김광준 on 06/06/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var exampleBtn: UIButton = UIButton()
    var exampleLbl: UILabel = UILabel()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(exampleLbl)
        view.addSubview(exampleBtn)
        configuarationBtn()
        configurationLbl()
        autoLayoutBtnAndLbl()
    }
    
    func configuarationBtn() {
        exampleBtn.setTitle("Test", for: .normal)
        exampleBtn.setTitleColor(.blue, for: .normal)
        exampleBtn.titleLabel?.font = UIFont.systemFont(ofSize: 50)
        exampleBtn.addTarget(self, action: #selector(didTapBtn(_:)), for: .touchUpInside)
    }
    
    func configurationLbl() {
        exampleLbl.text = "Test"
        exampleLbl.textColor = .black
        exampleLbl.textAlignment = .center
        exampleLbl.font = UIFont.systemFont(ofSize: 50)
    }
    
    
    
    func autoLayoutBtnAndLbl() {
        
        exampleBtn.translatesAutoresizingMaskIntoConstraints = false
        
        exampleBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        exampleBtn.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        exampleBtn.widthAnchor.constraint(equalToConstant: 100).isActive = true
        exampleBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        exampleLbl.translatesAutoresizingMaskIntoConstraints = false
        
        exampleLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        exampleLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        exampleLbl.heightAnchor.constraint(equalToConstant: 50).isActive = true
        exampleLbl.bottomAnchor.constraint(equalTo: exampleBtn.topAnchor, constant: -10).isActive = true
    }
    
    @objc func didTapBtn(_ sender: UIButton) {
        print("tapped Button")
    }


}

