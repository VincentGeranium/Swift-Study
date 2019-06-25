//
//  SecondViewController.swift
//  2019-06-25-tabBarController
//
//  Created by 김광준 on 25/06/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let secondVCLbl = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondVCLblConfiguration()
        secondVCLblLayout()
    }
    
    private func secondVCLblConfiguration() {
        
        secondVCLbl.text = "Second VC"
        secondVCLbl.textAlignment = .center
        secondVCLbl.textColor = #colorLiteral(red: 0.8446564078, green: 0.5145705342, blue: 1, alpha: 1)
        secondVCLbl.font = UIFont.boldSystemFont(ofSize: 30)
        secondVCLbl.backgroundColor = .black
        
        self.view.addSubview(secondVCLbl)
        
    }
    
    private func secondVCLblLayout() {
        
        secondVCLbl.translatesAutoresizingMaskIntoConstraints = false
        
        secondVCLbl.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        secondVCLbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        secondVCLbl.widthAnchor.constraint(equalToConstant: 200).isActive = true
        secondVCLbl.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }

}
