//
//  SecondViewController.swift
//  190510-UISilder-Study
//
//  Created by 김광준 on 10/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    // 버튼 객체 생성
    var dismissBtn = UIButton()
    
    // 싱글톤 객체 생성
    var secondVCSingleton = Singleton.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewConfiguration()
        view.backgroundColor = .white
        
        //view.backgroundColor -> UIColor, Float -> CGFloat 타입으로 변환
        // alpha = 투명도
        view.backgroundColor = UIColor(red: CGFloat(secondVCSingleton.redSliderValue), green: CGFloat(secondVCSingleton.greenSliderValue), blue: CGFloat(secondVCSingleton.blueSliderValue), alpha: 1)
    }
    
    func viewConfiguration() {
        
        //dismissBtn init
        dismissBtn.frame = CGRect(x: view.center.x - 100, y: 300, width: 200, height: 70)
        dismissBtn.addTarget(self, action: #selector(didTapDismissBtn(_:)), for: .touchUpInside)
        dismissBtn.setTitle("dismiss", for: .normal)
        dismissBtn.setTitleColor(.white, for: .normal)
        
        view.addSubview(dismissBtn)
    }
    
    @objc func didTapDismissBtn(_ sender: UIButton) {
            dismiss(animated: true, completion: nil)
    }
}
