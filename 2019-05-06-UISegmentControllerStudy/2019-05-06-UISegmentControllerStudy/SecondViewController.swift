//
//  SecondViewController.swift
//  2019-05-06-UISegmentControllerStudy
//
//  Created by 김광준 on 06/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var segBtn: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func didTapSegmentBtn(_ sender: Any) {
        print(segBtn.selectedSegmentIndex)
    }
    
}
