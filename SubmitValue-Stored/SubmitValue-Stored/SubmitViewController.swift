//
//  SubmitViewController.swift
//  SubmitValue-Stored
//
//  Created by 김광준 on 23/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit
class SubmitViewController: UIViewController {
    
    
    @IBOutlet var inputEmail: UITextField!
    @IBOutlet var isUpdate: UISwitch!
    @IBOutlet var interval: UIStepper!
    
    @IBOutlet var isUpdateLabel: UILabel!
    @IBOutlet var isIntervalLabel: UILabel!
 

    override func viewDidLoad() {
        super .viewDidLoad()
    }
    
    
 
    
    @IBAction func didTabStepper(_ sender: Any) {
        if isIntervalLabel != nil {
            isIntervalLabel.text = "\(Int(interval.value)) 분 마다"
        }
    }
    
    @IBAction func didTabSwitch(_ sender: Any) {
        if isUpdate.isOn == true {
            isUpdateLabel.text = "자동갱신"
        } else {
            isUpdateLabel.text = "자동갱신하지않음"
        }
    }
    
    @IBAction func didTabSubmitBtn(_ sender: Any) {
//        let preVC = self.presentingViewController
//        guard let vc = preVC as? ViewController else {
//            return
//        }
//
//        vc.paramEmail = self.inputEmail.text
//        vc.paramUpdata = self.isUpdate.isOn
//        vc.paramInterval = self.interval.value
        
        // AppDelegate 객체의 인스턴스를 가져온다.
        // 붕어빵을 굽는 과정
        // 타입 캐스팅 (다운 캐스팅)
        // 이 전체 코드 내에서 가장 주의 깊게 봐야 하는 코드
        let ad = UIApplication.shared.delegate as? AppDelegate
        
        // 값을 저장한다
        // 각각의 변수에 들어오는 값들을 델리게이트에 정의된 변수에 전달
        ad?.paramEmail = self.inputEmail.text
        ad?.paramUpdate = self.isUpdate.isOn
        ad?.paramInterval = self.interval.value
        
        // 이전 화면으로 복귀
        // 나를 띄워주는 뷰 컨트롤러가 있으면 디스미스 하고 아니면 아무것도 하지 않는다
        self.presentingViewController?.dismiss(animated: true, completion: nil)
        
    }
    
    
}
