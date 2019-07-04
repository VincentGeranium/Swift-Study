//
//  MainViewController.swift
//  Jamminim-Project
//
//  Created by 김광준 on 30/06/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let instaVC = InstagramViewController()
    
    let moveBtn = UIButton()
    
    let openInstaAppBtn = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .yellow
        
        moveBtnConfiguration()
        moveBtnLayout()
        
        openInstaAppBtnConfiguration()
        openInstaAppBtnLayout()
        
    }
    
    private func moveBtnConfiguration() {
        
        self.view.addSubview(moveBtn)
        
        moveBtn.setTitle("nextVC", for: .normal)
        moveBtn.setTitleColor(.white, for: .normal)
        moveBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        moveBtn.titleLabel?.textAlignment = .center
        moveBtn.backgroundColor = .black
        
        moveBtn.addTarget(self, action: #selector(didTapBtn(_:)), for: .touchUpInside)
    }
    
    private func moveBtnLayout() {
        
        moveBtn.translatesAutoresizingMaskIntoConstraints = false
        
        let guide = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            moveBtn.centerYAnchor.constraint(equalTo: guide.centerYAnchor),
            moveBtn.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 20),
            moveBtn.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -20),
            moveBtn.heightAnchor.constraint(equalToConstant: 40),
            ])
        
    }
    
    @objc private func didTapBtn(_ sender: UIButton) {
        
        present(instaVC, animated: true)
    }
    
    private func openInstaAppBtnConfiguration() {
        
        self.view.addSubview(openInstaAppBtn)
        
        openInstaAppBtn.setTitle("openInstaApp", for: .normal)
        openInstaAppBtn.setTitleColor(.white, for: .normal)
        openInstaAppBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        openInstaAppBtn.titleLabel?.textAlignment = .center
        openInstaAppBtn.backgroundColor = .black
        
        openInstaAppBtn.addTarget(self, action:#selector(openInstaApp(_:)) , for: .touchUpInside)
    }
    
    private func openInstaAppBtnLayout() {
        
        openInstaAppBtn.translatesAutoresizingMaskIntoConstraints = false
        
        let guide = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            openInstaAppBtn.topAnchor.constraint(equalTo: moveBtn.bottomAnchor, constant: 20),
            openInstaAppBtn.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 20),
            openInstaAppBtn.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -20),
            openInstaAppBtn.heightAnchor.constraint(equalToConstant: 40),
            ])
        
    }
    
    @objc private func openInstaApp(_ sender: UIButton) {
        let instagram = "instagram://app"
        
        let instagramURL = URL(string: instagram)
        
        if UIApplication.shared.canOpenURL(instagramURL!) {
            UIApplication.shared.open(instagramURL!)
        } else {
            print("error")
        }
    }
    


}
