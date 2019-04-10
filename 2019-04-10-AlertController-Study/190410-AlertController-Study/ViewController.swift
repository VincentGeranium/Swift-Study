//
//  ViewController.swift
//  190410-AlertController-Study
//
//  Created by 김광준 on 10/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let textLabel = UILabel()
    let enterButton = UIButton(type: .system)
    var countNumber: Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        enterButton.frame = CGRect(x: view.frame.width / 3, y: view.frame.height / 2, width: 150, height: 150)
        enterButton.setTitle("Enter", for: .normal)
        enterButton.titleLabel?.font = UIFont.systemFont(ofSize: 30) // UIFont(name: system, size: 30)
        enterButton.addTarget(self, action: #selector(enterButtonAction(_:)), for: .touchUpInside)
        view.addSubview(enterButton)
        
        textLabel.frame = CGRect(x: view.frame.width / 3, y: view.frame.height / 3, width: 150, height: 150)
        textLabel.text = "0"
        textLabel.textColor = .black
        textLabel.font = UIFont.systemFont(ofSize: 30)
        textLabel.textAlignment = .center
        view.addSubview(textLabel)
        
        
        
    }
    
    @objc func enterButtonAction(_ sender: Any) {
        let alertControllerAction = UIAlertController(title: "카운트 추가?", message: "숫자를 입력하세요", preferredStyle: .alert)
        
        alertControllerAction.addTextField() {(text) in
            text.placeholder = "insert number"
        }
        
        let up = UIAlertAction(title: "UP", style: .default) { _ in

            if alertControllerAction.textFields?[0].text?.isEmpty == false , let num = String?((alertControllerAction.textFields?[0].text)!) {
                self.textLabel.text = alertControllerAction.textFields?[0].text
                self.countNumber = Int(num)!
            } else {
                self.textLabel.textColor = .blue
                self.countNumber += 1
                self.textLabel.text = String(self.countNumber)
            }
            
        }
        
        let down = UIAlertAction(title: "DOWN", style: .default) { _ in
            
                self.textLabel.textColor = .red
                self.countNumber -= 1
                self.textLabel.text = String(self.countNumber)
            }
        
        let reset = UIAlertAction(title: "RESET", style: .default) { _ in
            
            self.textLabel.textColor = .black
            self.countNumber = 0
            self.textLabel.text = String(self.countNumber)
            
        }
        
        let cancel = UIAlertAction(title: "CANCEL", style: .cancel, handler: nil)
        
        alertControllerAction.addAction(reset)
        alertControllerAction.addAction(up)
        alertControllerAction.addAction(down)
        alertControllerAction.addAction(cancel)
        present(alertControllerAction, animated: true)
    }
}
