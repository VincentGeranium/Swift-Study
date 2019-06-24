//
//  ViewController.swift
//  2019-06-24-ViewChange-Study
//
//  Created by 김광준 on 24/06/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let viewNameLabel = UILabel()
    let firstBtn = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        self.navigationItem.prompt = "FirstVC"
        
        viewNameLblConfiguration()
        viewNameLblLayout()
        firstBtnConfiguration()
        firstBtnLayout()
    }
    
    private func viewNameLblConfiguration() {
        
        viewNameLabel.text = "FirstVC"
        viewNameLabel.textColor = .white
        viewNameLabel.textAlignment = .center
        viewNameLabel.font = UIFont.boldSystemFont(ofSize: 20)
        viewNameLabel.backgroundColor = .black
        
        self.view.addSubview(viewNameLabel)
    }
    
    private func viewNameLblLayout() {
        
        viewNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        viewNameLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        viewNameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
//        viewNameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50).isActive = true
        viewNameLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        viewNameLabel.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
    }
    
    private func firstBtnConfiguration() {
        
        firstBtn.setTitle("changedVC", for: .normal)
//        firstBtn.setTitleColor(UIColor.init(red: 116, green: 185, blue: 255, alpha: 1), for: .normal)
        firstBtn.setTitleColor(.red, for: .normal)
        firstBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        firstBtn.titleLabel?.textAlignment = .center
        firstBtn.backgroundColor = .white
        firstBtn.addTarget(self, action: #selector(didTapfirstBtn(_:)), for: .touchUpInside)
        
        self.view.addSubview(firstBtn)
    }
    
    private func firstBtnLayout() {
        
        firstBtn.translatesAutoresizingMaskIntoConstraints = false
        
        firstBtn.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        firstBtn.topAnchor.constraint(equalTo: viewNameLabel.bottomAnchor, constant: 30).isActive = true
//        firstBtn.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50).isActive = true
        firstBtn.widthAnchor.constraint(equalToConstant: 150).isActive = true
        firstBtn.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
    }
    
    @objc func didTapfirstBtn(_ sender: UIButton) {
        let secondVC = SecondViewController()
        
        present(secondVC, animated: true, completion: nil)
        
        
    }



}

