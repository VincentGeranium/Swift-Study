//
//  ViewController.swift
//  Autolayout-Anchor-edwith-Example
//
//  Created by 김광준 on 06/06/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var exampleBtn: UIButton!
    @IBOutlet weak var exampleLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        exampleBtn.translatesAutoresizingMaskIntoConstraints = false
        
        var constraintX: NSLayoutConstraint
        constraintX = exampleBtn.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        
        var constraintY: NSLayoutConstraint
        constraintY = exampleBtn.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        
        constraintX.isActive = true
        constraintY.isActive = true
        
        exampleLbl.translatesAutoresizingMaskIntoConstraints = false
        
        var buttonConstraintX: NSLayoutConstraint
        buttonConstraintX = exampleLbl.centerXAnchor.constraint(equalTo: exampleBtn.centerXAnchor)
        
        var topConstraint: NSLayoutConstraint
        topConstraint = exampleLbl.bottomAnchor.constraint(equalTo: exampleBtn.topAnchor, constant: -10)
        
        buttonConstraintX.isActive = true
        topConstraint.isActive = true
        
        var widthConstraint: NSLayoutConstraint
        widthConstraint = exampleLbl.widthAnchor.constraint(equalTo: exampleBtn.widthAnchor, multiplier: 2.0)
        
        exampleLbl.backgroundColor = .lightGray
        exampleBtn.backgroundColor = .brown
        exampleBtn.setTitleColor(.black, for: .normal)
        
        widthConstraint.isActive = true
    }


}

