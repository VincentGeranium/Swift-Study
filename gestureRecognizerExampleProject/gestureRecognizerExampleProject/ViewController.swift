//
//  ViewController.swift
//  gestureRecognizerExampleProject
//
//  Created by 김광준 on 2019/10/21.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Target-Action을 통한 gesture recognizer 초기화 및 생성
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapView(gestureRecognizer:)))
        
        // 뷰에 제스쳐 인식기(gesture recognizer) 연결하기
        self.view.addGestureRecognizer(tapRecognizer)
    }
    
    // 액션 메서드 - 코드로 구성
    @objc func tapView(gestureRecognizer: UITapGestureRecognizer) {
        print("tapped")
    }
    
    // 액션 메서드 - 스토리보드로 구성
    @IBAction func tapView(_ sender: UITapGestureRecognizer) {
        print("tapped")
    }
    
}

