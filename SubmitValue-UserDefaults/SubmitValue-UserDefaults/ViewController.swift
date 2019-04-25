//
//  ViewController.swift
//  SubmitValue-UserDefaults
//
//  Created by 김광준 on 24/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var emailData: UILabel!
    @IBOutlet var updateData: UILabel!
    @IBOutlet var intervalData: UILabel!
    
//    var paramEmail: String?
//    var paramUpdate: Bool?
//    var paramInterval: Double?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        앱 델리게이트를 활용한 값 받음
//        let ad = UIApplication.shared.delegate as? AppDelegate
//
//        if let email = ad?.paramEmail {
//            emailData.text = email
//        }
//        if let update = ad?.paramUpdate {
//           updateData.text = update == true ? "자동갱신" : "갱신하지 않음"
//        }
//        if let interval = ad?.paramInterval {
//            intervalData.text = "\(Int(interval)) 분 마다"
//        }
        
        let ud = UserDefaults.standard
        
        if let email = ud.string(forKey: "Email") {
            emailData.text = email
        }
        
        let update = ud.bool(forKey: "Update")
        updateData.text = (update == true ? "자동갱신" : "갱신하지않음")
        
        let interval = ud.double(forKey: "Interval")
        intervalData.text = "\(Int(interval)) 분 마다"
        
    
        
        
       
        
    }
    
    
    @IBAction func didTabRegistBtn(_ sender: Any) {
        
        // 세그웨이를 사용하지 않고 직접 버튼에 fvc를 띄우는 액션 구현
        
        // FromViewController 인스턴스를 가져오는데 스토리보드 상의 ID를 이용해 인스턴스 참조
//        guard let fvc = self.storyboard?.instantiateViewController(withIdentifier: "FVC") as? FromViewController else { return }
//
        //fvc를 띄우는 코드
//        self.present(fvc, animated: true, completion: nil)
    }
    

}

