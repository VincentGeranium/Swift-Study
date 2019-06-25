//
//  ViewController.swift
//  loginPage
//
//  Created by 김광준 on 25/06/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn


class ViewController: UIViewController, GIDSignInUIDelegate {
    
    let googleLoginBtn = GIDSignInButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.view.addSubview(googleLoginBtn)
        
        GIDSignIn.sharedInstance().uiDelegate = self
        
        
        googleLoginBtnLayout()
    }
    
    private func googleLoginBtnLayout() {
        
        googleLoginBtn.translatesAutoresizingMaskIntoConstraints = false
        
        googleLoginBtn.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        googleLoginBtn.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        googleLoginBtn.widthAnchor.constraint(equalToConstant: 230).isActive = true
        googleLoginBtn.heightAnchor.constraint(equalToConstant: 48).isActive = true
        googleLoginBtn.addTarget(self, action: #selector(didTabBtn(_:)), for: .touchUpInside)
        
    }
    
    @objc private func didTabBtn(_ sender: UIButton) {
        
        GIDSignIn.sharedInstance().signIn()
    }


}

