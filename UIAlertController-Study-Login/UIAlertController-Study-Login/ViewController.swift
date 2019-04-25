//
//  ViewController.swift
//  UIAlertController-Study-Login
//
//  Created by 김광준 on 25/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var result: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func alert(_ sender: Any) {
        let alert = UIAlertController.init(title: "선택", message: "항목을 선택해주세요", preferredStyle: .alert)
        
        let cancel = UIAlertAction.init(title: "취소", style: .cancel) { (_) in self.result.text = "취소 버튼을 클릭했습니다"}
        let confirm = UIAlertAction.init(title: "확인", style: .default) { (_) in self.result.text = "확인 버튼을 클릭했습니다"}
        let exec = UIAlertAction.init(title: "실행", style: .destructive) { (_) in self.result.text = "실행 버튼을 클릭했습니다"}
        
        
        alert.addAction(exec)
        alert.addAction(confirm)
        alert.addAction(cancel)
        self.present(alert, animated: false)
    }
    
    @IBAction func login(_ sender: Any) {
        let title = "iTunes Store에 로그인"
        let message = "kwangjun3952@gmail.com의 암호를 입력하십시오."
        
        let alert = UIAlertController.init(title: title, message: message , preferredStyle: .alert)
        
        let cancel = UIAlertAction.init(title: "취소", style: .cancel, handler: nil)
        let confirm = UIAlertAction.init(title: "확인", style: .default) { (_) in
            
            if let password = alert.textFields?[0] {
                print("입력된 값은 \(password.text!) 입니다")
            } else {
                print("입력된 값이 없습니다")
            } // textField의 text 값은 Optional이다 그래서 print할때
            // password.text 로 하면 Optional 값이 나오고, password.text!를 해야 Optional 값이 풀려서 나온다
            // 즉 2번 풀어 줘야 하는것
        }
      
        alert.addAction(cancel)
        alert.addAction(confirm)
        
        alert.addTextField(configurationHandler: { (tf) in
            tf.placeholder = "암호" // 안내 메세지
            tf.isSecureTextEntry = true // 비밀번호 암호화 처리
        })
            
        self.present(alert, animated: false)
    }
    
    @IBAction func userIdentfy(_ sender: Any) {
        
        // 메세지 창 관련 객체 정의
        let msg = "로그인"
        let alert = UIAlertController(title: nil, message: msg, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        let confirm = UIAlertAction(title: "확인", style: .default) { (_) in
            
            // 확인 버튼을 클릭했을 때 실행할 내용
            let loginId = alert.textFields?[0].text
            let loginPw = alert.textFields?[1].text
            
            if loginId == "kwangjun" && loginPw == "1234" {
                self.result.text = "인증되었습니다"
            } else {
                self.result.text = "인증에 실패하였습니다"
            }
            
        }
        
        // id
        alert.addTextField(configurationHandler: { (tf) in
            tf.placeholder = "아이디 입력" // 미리 보여줄 안내 메세지
            tf.isSecureTextEntry = false // 암호화 처리 (X)
        })
        
        // password
        alert.addTextField(configurationHandler: { (tf) in
            tf.placeholder = "비밀번호 입력"
            tf.isSecureTextEntry = true
        })
     
        
        alert.addAction(cancel)
        alert.addAction(confirm)
        
        self.present(alert, animated: true)
    }
    
    


}

