//
//  FirstView.swift
//  NaviControllerMinsExample
//
//  Created by 김광준 on 2019/11/28.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit
import Foundation

class FirstView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        makeSubView()
        makeConstraint()
        backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let firstBtn: UIButton = {
        let firstButton: UIButton = UIButton()
        firstButton.setTitle("Go to SecondView", for: .normal)
        firstButton.isUserInteractionEnabled = true
        firstButton.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        firstButton.titleLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return firstButton
    }()
    
    let secondBtn: UIButton = {
        let secondButton: UIButton = UIButton()
        secondButton.setTitle("Go to ThirdView", for: .normal)
        secondButton.isUserInteractionEnabled = true
        secondButton.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        secondButton.titleLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return secondButton
    }()
    
//    let thirdBtn: UIButton = {
//        let thirdButton: UIButton = UIButton()
//        thirdButton.setTitle("Go to FirstView", for: .normal)
//        thirdButton.isUserInteractionEnabled = true
//        thirdButton.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
//        thirdButton.titleLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//        return thirdButton
//    }()
    
    func makeSubView() {
        addSubview(firstBtn)
        addSubview(secondBtn)
//        addSubview(thirdBtn)
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
        
//        thirdBtn.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            thirdBtn.topAnchor.constraint(equalTo: secondBtn.bottomAnchor, constant: 20),
//            thirdBtn.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0),
//            thirdBtn.widthAnchor.constraint(equalTo: widthAnchor, constant: 0),
//            thirdBtn.heightAnchor.constraint(equalToConstant: 100),
//        ])
    }
}
