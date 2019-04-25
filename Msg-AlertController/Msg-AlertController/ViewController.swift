//
//  ViewController.swift
//  Msg-AlertController
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
        // 메시지 창 객체 생성
        let alert = UIAlertController(title: "선택", message: "항목을 선택해 주세요", preferredStyle: .alert)
        
        // 취소 버튼 생성
        let cancel = UIAlertAction(title: "취소", style: .cancel) {(_) in self.result.text = "취소 버튼을 클릭했습니다"}
        
        // 확인 버튼 생성
        let confirm = UIAlertAction(title: "확인", style: .default) {(_) in self.result.text = "확인 버튼을 클릭했습니다"}
        
        // 실행 버튼 생성
        let exec = UIAlertAction(title: "실핼", style: .destructive) {(_) -> Void in self.result.text = "실행 버튼을 클릭했습니다" }
        
        // 중지 버튼 생성
        let stop = UIAlertAction(title: "중지", style: .default) {(_) in self.result.text = "중지 버튼을 클릭했습니다" }
        
        // 버튼을 컨트롤러에 등록
        alert.addAction(cancel)
        alert.addAction(confirm)
        alert.addAction(exec)
        alert.addAction(stop)
        
        // 메시지 창 실행
        self.present(alert, animated: false, completion: nil)
        
        
        
    }
    
    
    
}

