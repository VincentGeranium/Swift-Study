//
//  testView.swift
//  2019-05-19-IBDesignable-And-IBInspectable
//
//  Created by 김광준 on 19/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

@IBDesignable
class testView: UIView {

    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        
        set {
            layer.borderColor = newValue?.cgColor
        }
    }

}
