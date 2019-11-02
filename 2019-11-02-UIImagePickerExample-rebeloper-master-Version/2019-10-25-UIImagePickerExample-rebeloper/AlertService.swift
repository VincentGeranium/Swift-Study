//
//  AlertService.swift
//  2019-10-25-UIImagePickerExample-rebeloper
//
//  Created by 김광준 on 2019/10/28.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit




class AlertService {

   static func showAlert(style: UIAlertController.Style, title: String?, message: String?, actions: [UIAlertAction] = [UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)], completion: (() -> Swift.Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        for action in actions {
            alert.addAction(action)
        }
    }
}

extension UIApplication: InsteadKeyWindows {
    
    public var KeyWindow: UIWindow {
        let key = UIApplication.shared.connectedScenes
            .filter({$0.activationState == .foregroundActive})
            .map({$0 as? UIWindowScene})
            .compactMap({$0})
            .first?.windows
            .filter({$0.isKeyWindow}).first
        
        return key!
    }
    
    
    
    
    class func getTopMostViewController(base: UIViewController? = UIApplication.shared.KeyWindow.rootViewController) -> UIViewController? {
        if let nav = base as? UINavigationController {
            return getTopMostViewController(base: nav.visibleViewController)
        }
        if let tab = base as? UITabBarController {
            if let selected = tab.selectedViewController {
                return getTopMostViewController(base: selected)
            }
        }
        if let presented = base?.presentedViewController {
            return getTopMostViewController(base: presented)
        }
        return base
    }
}
