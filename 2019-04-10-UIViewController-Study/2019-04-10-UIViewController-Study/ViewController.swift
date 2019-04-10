//
//  ViewController.swift
//  2019-04-10-UIViewController-Study
//
//  Created by 김광준 on 10/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var name: String = "First ViewController"
    var from: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        print("---------- [ viewDidLoad ] ----------")
        
        view.backgroundColor = .yellow
        
        let button = UIButton(type: .system)
        button.frame = CGRect(x: view.frame.width / 3, y: view.frame.height / 3, width: 200, height: 150)
        button.addTarget(self,
                         action: #selector(buttonAction),
                         for: .touchUpInside)
        button.setTitle("Present", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        view.addSubview(button)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("\n---------- [ viewDidAppear ] ----------")
        print("presented VC : ", from)
    }
    
    @objc func buttonAction() {
        let secondVC = SecondViewController()
        secondVC.from = name
        present(secondVC, animated: true)
    }
}

