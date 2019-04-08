//
//  ViewController.swift
//  2019-04-08-SegmentedControl-Study
//
//  Created by 김광준 on 08/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet var mySegControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mySegControl.addTarget(self, action: #selector(segContStatement(_:)), for: .valueChanged)
    }
    
    @objc func segContStatement(_ sender: UISegmentedControl){
        
        switch mySegControl.selectedSegmentIndex {
        case 0:
            textLabel.text = "First"
        default:
            textLabel.text = "Second"
        }
    }
    
}

