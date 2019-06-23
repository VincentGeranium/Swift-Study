//
//  ViewController.swift
//  2019-06-23-testApp
//
//  Created by 김광준 on 23/06/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    
    let goToInstaBtn = UIButton()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(goToInstaBtn)
        view.backgroundColor = .black
        
        goToInstaBtnLayout()
        goToInstaBtnConfiguration()
        
    }
    
    private func goToInstaBtnConfiguration() {
        goToInstaBtn.setTitle("잼미 인스타", for: .normal)
//        goToInstaBtn.setTitleColor(UIColor.init(displayP3Red: 255, green: 165, blue: 2, alpha: 1), for: .normal)
        goToInstaBtn.setTitleColor(.black, for: .normal)
//        goToInstaBtn.titleLabel?.textColor = .init(displayP3Red: 255, green: 165, blue: 2, alpha: 1)
//        goToInstaBtn.backgroundColor = UIColor.init(displayP3Red: 116, green: 125, blue: 140, alpha: 1)
        goToInstaBtn.backgroundColor = .white
        goToInstaBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        goToInstaBtn.titleLabel?.textAlignment = .center
        goToInstaBtn.addTarget(self, action: #selector(didTapBtn(_:)), for: .touchUpInside)
    }
    
    private func goToInstaBtnLayout() {
        
        goToInstaBtn.translatesAutoresizingMaskIntoConstraints = false
        
        goToInstaBtn.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        goToInstaBtn.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 300).isActive = true
        goToInstaBtn.widthAnchor.constraint(equalToConstant: 150).isActive = true
        goToInstaBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    @objc func didTapBtn(_ sender: UIButton) {
        let secondVC = SecondViewController()
        present(secondVC, animated: true, completion: nil)
        
    }


}

