//
//  KeyWindow.swift
//  2019-10-25-UIImagePickerExample-rebeloper
//
//  Created by 김광준 on 2019/10/30.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

public protocol InsteadKeyWindows {
    var KeyWindow: UIWindow{ get }
}

//class InsteadKeyWindow: InsteadKeyWindows {
//    var KeyWindow: UIApplication
//
//    init(keyWindow: KeyWindow) {
//        <#statements#>
//    }
    
 
//    static var keyWindow = UIApplication.shared.connectedScenes
//    .filter({$0.activationState == .foregroundActive})
//    .map({$0 as? UIWindowScene})
//    .compactMap({$0})
//    .first?.windows
//    .filter({$0.isKeyWindow}).first
//}




