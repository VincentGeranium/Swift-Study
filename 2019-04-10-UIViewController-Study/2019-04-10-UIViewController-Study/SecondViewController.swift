//
//  SecondViewController.swift
//  2019-04-10-UIViewController-Study
//
//  Created by 김광준 on 10/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var name: String = "SecondViewController"
    var from: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        
        
        let secondButton = UIButton(type: .system)
        secondButton.frame = CGRect(x: view.frame.width / 3, y: view.frame.height / 3, width: 200, height: 150)
        secondButton.addTarget(self,
                               action: #selector(secondButtonAction),
                               for: .touchUpInside)
        secondButton.setTitle("Dismiss", for: .normal)
        secondButton.setTitleColor(.white, for: .normal)
        secondButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        view.addSubview(secondButton)

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("----------[viewDidAppear]---------------")
        print("Present VC :" ,from)
    }
    
    @objc func secondButtonAction() {
        guard let vc = presentingViewController as? ViewController
            else { return }
        vc.from = name
        
        presentingViewController?.dismiss(animated: true)
        
    }
}
