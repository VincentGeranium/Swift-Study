//
//  ThirdView.swift
//  NaviControllerMinsExample
//
//  Created by 김광준 on 2019/11/28.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit
import Foundation

class ThirdView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        makeSubView()
        makeConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let firstBtn: UIButton = {
        let firstButton: UIButton = UIButton()
        firstButton.setTitle("Go to FirstView", for: .normal)
        firstButton.isUserInteractionEnabled = true
        firstButton.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        firstButton.titleLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return firstButton
    }()
    
    let secondBtn: UIButton = {
        let secondButton: UIButton = UIButton()
        secondButton.setTitle("popViewController", for: .normal)
        secondButton.isUserInteractionEnabled = true
        secondButton.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
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
