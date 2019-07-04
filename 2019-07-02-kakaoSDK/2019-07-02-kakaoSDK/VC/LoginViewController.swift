//
//  LoginViewController.swift
//  2019-07-02-kakaoSDK
//
//  Created by 김광준 on 03/07/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBAction func loginButtonDidTap(_ sender: Any) {
        guard let session = KOSession.shared() else { return }
        
        // Close old session
        session.isOpen() ? session.close() : ()
        
        session.open(completionHandler: {(error) in
            if !session.isOpen() {
                // error
                if let error = error as NSError? {
                    // KOErrorCode
                    switch error.code {
                    case Int(KOErrorCancelled.rawValue): print("cancelled")
                    default:
                        print(error.localizedDescription)
                    }
                }
            } else {
                print("Login Success")
                // 앱 델리게이트에 만든 함수 접근하여 사용할때 코드
//                ((UIApplication.shared.delegate) as? AppDelegate)?.setupRootViewController()
                
                // 앱 델리게이트 안에 타입 프로퍼티(앱 델리게이트 자신을 리턴하는)를 미리 만들어 두고 사용 할때 코드 위의 코드와 같은 동작
                AppDelegate.instance.setupRootViewController()
            }
        }, authTypes: [NSNumber(value: KOAuthType.talk.rawValue)])
    }
}
