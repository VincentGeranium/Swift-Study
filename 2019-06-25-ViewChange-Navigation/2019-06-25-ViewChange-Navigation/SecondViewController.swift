//
//  SecondViewController.swift
//  2019-06-25-ViewChange-Navigation
//
//  Created by 김광준 on 25/06/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let secondVCLbl = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .brown
        navigationItem.title = "두번째 뷰"
        navigationItem.largeTitleDisplayMode = .automatic
        secondVCLblConfiguration()
        secondVCLblLayout()
    }
    
    private func secondVCLblConfiguration() {
        
        secondVCLbl.text = "Second VC"
        secondVCLbl.textColor = .black
        secondVCLbl.backgroundColor = .white
        secondVCLbl.textAlignment = .center
        secondVCLbl.font = UIFont.boldSystemFont(ofSize: 30)
        
        self.view.addSubview(secondVCLbl)
    }
    
    private func secondVCLblLayout() {
        
        secondVCLbl.translatesAutoresizingMaskIntoConstraints = false
        
        secondVCLbl.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        secondVCLbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        secondVCLbl.widthAnchor.constraint(equalToConstant: 250).isActive = true
        secondVCLbl.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }

}
