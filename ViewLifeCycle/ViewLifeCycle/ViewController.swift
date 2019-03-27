//
//  ViewController.swift
//  ViewLifeCycle
//
//  Created by 김광준 on 26/03/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//


// View Height = 896.0
// View Width = 414.0


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("----------[viewDidLoad]----------")
        
        view.backgroundColor = .black
        
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 100, y: 100, width: 80, height: 40)
        button.setTitle("다음 화면", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.addTarget(self, action: #selector(presentSecondVC), for: .touchUpInside)
        view.addSubview(button)
        }
    
    @objc func presentSecondVC() {
        let secondVC = SecondViewController()
        present(secondVC, animated: true)
    }
    
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            print("------[첫번째 viewWillAppear]-------")
        }
    
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            print("------[첫번째 viewDidAppear]-------")
        
        }
    
        override func viewWillDisappear(_ animated: Bool) {
            super.viewDidAppear(animated)
            print("------[첫번째 viewWillDisappear]-------")
        }
    
        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidAppear(animated)
            print("------[첫번째 viewDidDisappear]-------")
        }
    
        deinit {
            print("first deinit")
        }
}



