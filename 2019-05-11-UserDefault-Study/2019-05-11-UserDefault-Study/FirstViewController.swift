//
//  ViewController.swift
//  2019-05-11-UserDefault-Study
//
//  Created by 김광준 on 11/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    let userDefaultObject = UserDefaults.standard
    
    @IBOutlet weak var firstVCtextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstVCtextField.textAlignment = .center
        firstVCtextField.placeholder = "값을 입력해 주세요"
        
    }
    
    @IBAction func didTapSendBtn(_ sender: UIButton) {
        let textStored = firstVCtextField.text
        userDefaultObject.set(textStored, forKey: "tf")
    }
    
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        super.performSegue(withIdentifier: "firstVCsegue", sender: sender)
    }
    
    
    @IBAction func dismissBtn(_ sender: UIStoryboardSegue) {
        dismiss(animated: true, completion: nil)
    }


}

