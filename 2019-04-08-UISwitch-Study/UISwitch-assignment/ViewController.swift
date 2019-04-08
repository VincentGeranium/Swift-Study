//
//  ViewController.swift
//  UISwitch-assignment
//
//  Created by 김광준 on 08/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var switchAction: UISwitch!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        switchAction.addTarget(self, action: #selector(switchActionStatement(switchAction:)), for: .valueChanged)
        
    }
    
    @objc func switchActionStatement(switchAction: UISwitch) {
        if switchAction.isOn {
            numberLabel.text = "Switch is On"
            switchAction.setOn(true, animated: true)
        } else {
            numberLabel.text = "Switch is Off"
            switchAction.setOn(false, animated: true)
        }
    }
}

