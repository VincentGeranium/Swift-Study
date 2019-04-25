//
//  ViewController.swift
//  UIAlertController-Study-TextField
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
    
    
    @IBAction func login(_ sender: Any) {
        let title = "iTuens Store에 로그인"
        let message = "사용자의 Apple ID kwangjun3952@gmail.com의 암호를 입력하십시오"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        let ok = UIAlertAction(title: "확인", style: .default) {(_) in
            // 확인 버튼을 클릭했을 때 처리할 내용
            if let tf = alert.textFields?[0] {
                print("입력된 값은 \(tf.text!) 입니다.")
            } else {
                print("입력된 값이 없습니다")
            }
        }
        
        alert.addAction(cancel)
        alert.addAction(ok)
        
        alert.addTextField(configurationHandler: { (tf) in
            // 텍스트 필드의 속성 설정
            tf.placeholder = "암호" // 안내 메시지
            tf.isSecureTextEntry = true // 비밀번호 처리
        })
        
        self.present(alert, animated: false)
    }
    
    
    
    @IBAction func alert(_ sender: Any) {
        
        let alert = UIAlertController(title: "선택", message: "항목을 선택해 주세요", preferredStyle: .alert)
        
        let cancel = UIAlertAction(title: "취소", style: .cancel) {(_) -> Void in self.result.text = "취소 버튼을 클릭했습니다" }
        
        let ok = UIAlertAction(title: "확인", style: .default) {(_) in self.result.text = "확인 버튼을 클릭했습니다"}
        
        let exec = UIAlertAction(title: "실행", style: .destructive) {(_) in self.result.text = "실행 버튼을 클릭했습니다"}
        
        let stop = UIAlertAction(title: "중지", style: .default) {(_) in self.result.text = "중지 버튼을 클릭했습니다"}
        
        alert.addAction(stop)
        alert.addAction(exec)
        alert.addAction(ok)
        alert.addAction(cancel)
        
        self.present(alert, animated: false)
        
    }
    

}

