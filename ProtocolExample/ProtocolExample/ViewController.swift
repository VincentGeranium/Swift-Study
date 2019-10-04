//
//  ViewController.swift
//  ProtocolExample
//
//  Created by 김광준 on 03/10/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
    }
    
    // SomeProtocol을 상속 받은 SomeStructure
    struct SomeStructure: SomeProtocol {
        
        // structure definition here
        
    }


}

