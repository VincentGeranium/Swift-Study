//
//  ViewController.swift
//  usingFirebaseGoogleLogin
//
//  Created by 김광준 on 24/08/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController, GIDSignInUIDelegate {
    
    let signInBtn = GIDSignInButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().signIn()
        
        layout()
    }
    
    private func layout() {
        view.addSubview(signInBtn)
        signInBtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            signInBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signInBtn.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            ])
        
    }


}

