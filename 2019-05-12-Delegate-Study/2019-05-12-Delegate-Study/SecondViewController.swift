//
//  SecondViewController.swift
//  2019-05-12-Delegate-Study
//
//  Created by 김광준 on 12/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

protocol SecondViewControllerDelegate: class {
    func sendText(_ value: String)
}

class SecondViewController: UIViewController {
    
    var delegate: SecondViewControllerDelegate?
    
    var tempStored = ""
    
    
    @IBOutlet weak var secondVClbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate?.sendText(tempStored)
    }
    
}
