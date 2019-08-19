//
//  MainViewController.swift
//  2019-08-19-gridStyleCollectionViewExample
//
//  Created by 김광준 on 19/08/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let main = MainView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
        setupLayout()
        setupConfigure()
    }
    
    private func setupLayout() {
        let guide = view.safeAreaLayoutGuide
        
        view.addSubview(main)
        main.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            main.topAnchor.constraint(equalTo: guide.topAnchor),
            main.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            main.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            main.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
            ])
    
    }
    
    private func setupConfigure() {

    }
    
}
