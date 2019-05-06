//
//  SecondViewController.swift
//  2019-05-06-SegueStudy
//
//  Created by 김광준 on 06/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var animal: String = ""
    var count: Int = 0
    
    
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgView.image = UIImage(named: animal)
    }
    
    
    @IBAction func countBtn(_ sender: UIButton) {
        count += 1
    }
}
