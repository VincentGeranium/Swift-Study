//
//  ViewController.swift
//  SubmitValue-Stored
//
//  Created by 김광준 on 23/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var email: UILabel!
    @IBOutlet var update: UILabel!
    @IBOutlet var interval: UILabel!
    
    var paramEmail: String?
    var paramUpdata: Bool?
    var paramInterval: Double?
    
    override func viewWillAppear(_ animated: Bool) {
        if let resultEmail = paramEmail {
            email.text = resultEmail
        }
        if let resultUpdate = paramUpdata {
            update.text = resultUpdate == true ? "자동갱신" : "갱신하지않음"
        }
        if let resultInterval = paramInterval {
            interval.text = "\(Int(resultInterval)) 분마다"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func didTabRegistBtn(_ sender: Any) {
        
    }
    
}

