//
//  SecondViewController.swift
//  ViewLifeCycle
//
//  Created by 김광준 on 26/03/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("----------[viewDidLoad]----------")
        
        view.backgroundColor = .blue
        
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 100, y: 100, width: 80, height: 40)
        button.setTitle("Dismiss", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.addTarget(self, action: #selector(dismissSecondVC), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func dismissSecondVC() {
        presentingViewController?.dismiss(animated: true, completion: nil)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("------[두번째 viewWillAppear]-------")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("------[두번째 viewDidAppear]-------")
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("------[두번째 viewWillDisappear]-------")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("------[두번째 viewDidDisappear]-------")
    }
    
    deinit {
        print("Second deinit")
    }
}



