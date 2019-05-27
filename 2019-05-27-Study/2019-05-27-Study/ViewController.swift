//
//  ViewController.swift
//  2019-05-27-Study
//
//  Created by 김광준 on 27/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let mainLbl = UILabel()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        addSubView()
        autoLayout()
        configuration()
    }
    
    private func addSubView() {
        view.addSubview(mainLbl)
    }
    
    private func autoLayout() {
        
            mainLbl.translatesAutoresizingMaskIntoConstraints = false
        
            mainLbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
            mainLbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
            mainLbl.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
            mainLbl.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -300).isActive = true
        
    }
    
    private func configuration() {
        mainLbl.text = "테스트"
        mainLbl.textColor = .black
        mainLbl.textAlignment = .center
        mainLbl.backgroundColor = .brown
    }


}

