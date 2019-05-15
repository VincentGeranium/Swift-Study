//
//  SecondViewController.swift
//  2019-05-15-TapBarController-Study
//
//  Created by 김광준 on 15/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

final class SecondViewController: UIViewController {
    
    var infoLabel: UILabel = UILabel()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurationAboutLabel()
        
    }
    
    func configurationAboutLabel() {
        let info = infoLabel
        
        info.frame = CGRect(x: 114, y: 392, width: 187, height: 112)
        info.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        info.text = "SecondVC"
        info.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        info.textAlignment = .center
        view.addSubview(info)
    }
    
    
    
}
