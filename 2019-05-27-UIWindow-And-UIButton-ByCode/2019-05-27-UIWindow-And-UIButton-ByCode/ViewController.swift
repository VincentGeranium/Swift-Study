//
//  ViewController.swift
//  2019-05-27-UIWindow-And-UIButton-ByCode
//
//  Created by 김광준 on 27/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let mainButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(mainButton)
        autoLayout()
        mainButtonConfiguration()
    }
    
    private func autoLayout() {
        mainButton.translatesAutoresizingMaskIntoConstraints = false
        
        mainButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        mainButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50).isActive = true
        mainButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        mainButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    private func mainButtonConfiguration() {
        mainButton.setTitle("Button", for: .normal)
        mainButton.setTitleColor(.black, for: .normal)
        mainButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        mainButton.backgroundColor = .brown
        mainButton.addTarget(self, action: #selector(didTabBtn(_:)), for: .touchUpInside)
    }
    
    @objc func didTabBtn(_ sender: UIButton) {
        let secondVC = SecondViewController()
        present(secondVC, animated: true)
    }
}

