//
//  ViewController.swift
//  2019-06-25-ViewChange-Navigation
//
//  Created by 김광준 on 25/06/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    let firstVCLbl = UILabel()
    let secondVC = SecondViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  view.backgroundColor = #colorLiteral()
        view.backgroundColor = #colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1)
        
        naviControllerSetting()
        firstVCLblConfiguration()
        firstVCLblLayout()
        
        
        
        
    }
    
    private func naviControllerSetting() {
        title = "첫번째 뷰"
        
        if #available(iOS 11.0, *) {
            navigationController?.navigationBar.prefersLargeTitles = true
        }
        
        let barButton = UIBarButtonItem(title: "Second VC", style: .done, target: self, action: #selector(pushViewController(_:)))
        navigationItem.rightBarButtonItem = barButton
    }
    
    private func firstVCLblConfiguration() {
        firstVCLbl.text = "First VC"
        firstVCLbl.textAlignment = .center
        firstVCLbl.textColor = .white
        firstVCLbl.backgroundColor = .black
        firstVCLbl.font = UIFont.boldSystemFont(ofSize: 30)
        
        self.view.addSubview(firstVCLbl)
    }
    
    private func firstVCLblLayout() {
        
        firstVCLbl.translatesAutoresizingMaskIntoConstraints = false
        
        firstVCLbl.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        firstVCLbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        firstVCLbl.widthAnchor.constraint(equalToConstant: 150).isActive = true
        firstVCLbl.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc private func pushViewController(_ sender: Any) {
        navigationController?.pushViewController(secondVC, animated: true)
    }


}

