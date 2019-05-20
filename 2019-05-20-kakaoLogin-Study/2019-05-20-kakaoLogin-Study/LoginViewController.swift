//
//  LoginViewController.swift
//  2019-05-20-kakaoLogin-Study
//
//  Created by 김광준 on 20/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBAction func loginButtonDidTap(_ sender: UIButton) {
        guard let session = KOSession.shared() else { return }
        
        //Close old session
        session.isOpen() ? session.close() : ()
        
        session.open(completionHandler: { (error) in
            if !session.isOpen() {
                // error
                if let error = error as? NSError {
                    // KOErrorCode
                    switch error.code {
                    case Int(KOErrorCancelled.rawValue):
                        print("cancelled")
                    default:
                        print(error.localizedDescription)
                    }
                }
            } else {
                print("Login Success")
//  ((UIApplication.shared.delegate) as? AppDelegate)?.setupRootViewController() == AppDelegate.instance.setupRootViewController()
                AppDelegate.instance.setupRootViewController()
            }
        }, authTypes: [NSNumber(value: KOAuthType.talk.rawValue)])
        
    }
}
