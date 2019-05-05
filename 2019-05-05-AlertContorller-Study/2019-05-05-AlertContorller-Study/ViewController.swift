//
//  ViewController.swift
//  2019-05-05-AlertContorller-Study
//
//  Created by 김광준 on 05/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        
        let statementLbl = UILabel()
        let enterBtn = UIButton(type: .system) // UIButton 인스턴스화 할때 type 명시 안하면 화면에 안뜸
        var number: Int = 0
        
        override func viewDidLoad() {
            super.viewDidLoad()
            lblstatement()
            btnEnter()
        }
        
        func lblstatement() {
            let x = view.frame.width / 3
            let y = view.frame.height / 2
            statementLbl.frame = CGRect(x: x, y: y, width: 150, height: 150)
            statementLbl.font = UIFont.systemFont(ofSize: 50)
            statementLbl.textAlignment = .center
            statementLbl.text = "입력값"
            view.addSubview(statementLbl)
        }
        
        func btnEnter() {
            let x = view.frame.width / 3
            let y = view.frame.height / 3
            enterBtn.frame = CGRect(x: x, y: y, width: 150, height: 150)
            enterBtn.setTitle("Tap", for: .normal)
            enterBtn.titleLabel?.font = UIFont.systemFont(ofSize: 50)
            enterBtn.addTarget(self, action: #selector(didTabBtn(_:)), for: .touchUpInside)
            view.addSubview(enterBtn)
        }
        
        @objc func didTabBtn (_ sender: UIButton) {
            let alert: UIAlertController = UIAlertController(title: "타이틀", message: "메세지", preferredStyle: .alert)
            alert.addTextField() { (text) in
                text.placeholder = "입력"
            }
            
            let alertActionUp: UIAlertAction = UIAlertAction(title: "Up", style: .default) { _ in
                if alert.textFields?[0].text?.isEmpty == false, let num = String?((alert.textFields?[0].text)!) {
                    self.statementLbl.text = alert.textFields?[0].text
                    self.number = Int(num)!
                } else {
                    self.statementLbl.textColor = .blue
                    self.number += 1
                    self.statementLbl.text = String(self.number)
                }
            }
            
            let alertActionDown: UIAlertAction = UIAlertAction(title: "Down", style: .default) { _ in
                self.statementLbl.textColor = .red
                self.number -= 1
                self.statementLbl.text = String(self.number)
                
            }
            let alertActionReset: UIAlertAction = UIAlertAction(title: "Reset", style: .destructive) { _ in
                self.number = 0
                self.statementLbl.text = String(self.number)
            }
            let alertActionCancle: UIAlertAction = UIAlertAction(title: "Cancle", style: .cancel, handler: nil)
            
            
            
            
            alert.addAction(alertActionUp) // alert의 action 을 만들고 addAction을 안해주면 Action이 안만들어지고 아에 구현이 안됨
            alert.addAction(alertActionDown)
            alert.addAction(alertActionReset)
            alert.addAction(alertActionCancle)
            
            present(alert, animated: true) // 다 만든 alertContoroller 객체는 present로 띄워줘야 구동한다
        }
}


