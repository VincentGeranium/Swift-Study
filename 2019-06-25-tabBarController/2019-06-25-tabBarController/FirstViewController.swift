//
//  ViewController.swift
//  2019-06-25-tabBarController
//
//  Created by 김광준 on 25/06/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    let firstVCLbl = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        firstVCLblConfiguration()
        firstVCLblLayout()
        
    }
    
    private func firstVCLblConfiguration() {
        firstVCLbl.text = "First VC"
        firstVCLbl.textColor = .red
        firstVCLbl.textAlignment = .center
        firstVCLbl.font = UIFont.boldSystemFont(ofSize: 20)
        firstVCLbl.backgroundColor = .white
        
        self.view.addSubview(firstVCLbl)
    }
    
    private func firstVCLblLayout() {
        
        firstVCLbl.translatesAutoresizingMaskIntoConstraints = false
        
        firstVCLbl.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        firstVCLbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        firstVCLbl.widthAnchor.constraint(equalToConstant: 200).isActive = true
        firstVCLbl.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }


}

