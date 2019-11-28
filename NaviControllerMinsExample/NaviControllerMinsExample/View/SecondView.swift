//
//  SecondView.swift
//  NaviControllerMinsExample
//
//  Created by 김광준 on 2019/11/28.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit
import Foundation

class SecondView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        makeSubView()
        makeConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let firstBtn: UIButton = {
        let firstButton: UIButton = UIButton()
        firstButton.setTitle("Go to ThirdView", for: .normal)
        firstButton.isUserInteractionEnabled = true
        firstButton.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        firstButton.titleLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return firstButton
    }()
    
    let secondBtn: UIButton = {
        let secondButton: UIButton = UIButton()
        secondButton.setTitle("PopViewController", for: .normal)
        secondButton.isUserInteractionEnabled = true
        secondButton.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        secondButton.titleLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return secondButton
    }()
    
    func makeSubView() {
        addSubview(firstBtn)
        addSubview(secondBtn)
    }
    
    func makeConstraint() {
        firstBtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            firstBtn.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            firstBtn.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0),
            firstBtn.widthAnchor.constraint(equalTo: widthAnchor, constant: 0),
            firstBtn.heightAnchor.constraint(equalToConstant: 100),
        ])
        
        secondBtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            secondBtn.topAnchor.constraint(equalTo: firstBtn.bottomAnchor, constant: 20),
            secondBtn.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0),
            secondBtn.widthAnchor.constraint(equalTo: widthAnchor, constant: 0),
            secondBtn.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
}
