//
//  ViewController.swift
//  2019-05-13-DelegatePattern-Study
//
//  Created by 김광준 on 13/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {
    // UITextFieldDelegate =>  텍스트 필드 델리게이트 "프로토콜" 채택
    
    @IBOutlet weak var firstVCTextField: UITextField!
    @IBOutlet weak var firstVCLabel: UILabel!
    var firstVCBtn = UIButton()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstVCTextField.textAlignment = .center
        firstVCTextField.placeholder = "입력값을 넣어 주세요"
        
        // 위임자를 정해주는 코드
        // 위임자(대리자)가 누구인지 알려주는 과정이라고 생각하면 쉽다
        firstVCTextField.delegate = self
        
        firstVCBtn.frame = CGRect(x: 146, y: 298, width: 123, height: 76)
        firstVCBtn.setTitle("버튼", for: .normal)
        firstVCBtn.setTitleColor(.red, for: .normal)
        firstVCBtn.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        firstVCBtn.addTarget(self, action: #selector(didTapfirstBtn(_:)), for: .touchUpInside)
        view.addSubview(firstVCBtn)
        
//        firstVCLabel.font = UIFont.boldSystemFont(ofSize: 30)
        
    }
    
    
    // 버튼을 눌러서 레이블 값 변경
    @objc func didTapfirstBtn(_ sender: UIButton) {
        firstVCLabel.text = firstVCTextField.text
    }
    
    // UITextFieldDelegate 안에 정의 되어 있는 함수 => textFieldShouldReturn
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        firstVCLabel.text = firstVCTextField.text
        return true
    }
    
    
    
//    @IBAction func didTapBtn(_ sender: UIButton) {
//
        //       그냥 버튼 클릭으로 레이블 값 바꾸는 코드
        //       firstVCLabel.text = firstVCTextField.text
//    }
    
    
    


}

