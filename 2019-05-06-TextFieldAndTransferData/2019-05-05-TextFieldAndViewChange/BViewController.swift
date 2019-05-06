//
//  BViewController.swift
//  2019-05-05-TextFieldAndViewChange
//
//  Created by 김광준 on 05/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit



class BViewController: UIViewController {
    
    let presentVClbl = UILabel()
    let goToAViewBtn = UIButton()
    let dismissBtn = UIButton()
    var countNumberLbl: UILabel? // 옵셔널 타입으로 정의 할때는 var로 해야 나중에 밑에서 정의할때 인스턴스화 한 객체를 assign 할 수 있다
    var countNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.countNumber += 1
        view.backgroundColor = .red
        countNumberLblFrame()
        goToAView()
        dismissFunction()
        showThisVCName()
    }
    
    func showThisVCName() {
        presentVClbl.frame = CGRect(x: view.frame.width / 10,
                                    y: view.frame.height / 5 - 50,
                                    width: view.frame.width - view.frame.width / 5,
                                    height: 80)
        presentVClbl.textColor = .green
        presentVClbl.textAlignment = .center
        presentVClbl.font = UIFont.systemFont(ofSize: 50)
        presentVClbl.text = "B View"
        view.addSubview(presentVClbl)
    }
    
    func countNumberLblFrame() {
        let countNumberLabel = UILabel()
        countNumberLabel.frame = CGRect(x: view.frame.width / 10,
                                        y: view.frame.height / 4,
                                        width: view.frame.width - view.frame.width / 5,
                                        height: 80)
        countNumberLabel.textColor = .green
        countNumberLabel.textAlignment = .center
        countNumberLabel.font = UIFont.systemFont(ofSize: 50)
        countNumberLabel.text = String(self.countNumber)
        view.addSubview(countNumberLabel)
        
        countNumberLbl = countNumberLabel
    }
    
    func goToAView() {
        goToAViewBtn.frame = CGRect(x: view.frame.width / 10,
                                    y: view.frame.height / 2 - 100,
                                    width: view.frame.width - view.frame.width / 5,
                                    height: 80)
        goToAViewBtn.setTitle("goToA", for: .normal)
        goToAViewBtn.setTitleColor(.green, for: .normal)
        goToAViewBtn.titleLabel?.font = UIFont.systemFont(ofSize: 50)
        goToAViewBtn.addTarget(self, action: #selector(didTabBtn(_:)), for: .touchUpInside)
        goToAViewBtn.tag = 0
        view.addSubview(goToAViewBtn)
    }
    
    func dismissFunction() {
        dismissBtn.frame = CGRect(x: view.frame.width / 10,
                                  y: view.frame.height / 2,
                                  width: view.frame.width - view.frame.width / 5,
                                  height: 80)
        dismissBtn.setTitle("뒤로가기", for: .normal)
        dismissBtn.setTitleColor(.green, for: .normal)
        dismissBtn.titleLabel?.textAlignment = .center
        dismissBtn.titleLabel?.font = UIFont.systemFont(ofSize: 50)
        dismissBtn.addTarget(self, action: #selector(didTabBtn(_:)), for: .touchUpInside)
        dismissBtn.tag = 1 // 밑에 didTabBtn의 내부에 if 구문을 보면 tag로 한번 거르는데 이때 dismiss에 tag를 정의를 안했더니 자꾸 present로 A를 띄웠다, 즉 처음 if 문의 condition에서 tag가 0 밖에 없으니 뒤로가기 버튼을 눌러도 A 로만 계속 가는 것이다
        view.addSubview(dismissBtn)
    }
    
    @objc func didTabBtn(_ sender: UIButton) {
        if sender.tag == 0 {
            let aVC = AViewController()
            aVC.countNumber = self.countNumber
            present(aVC, animated: true, completion: nil)
        } else {
            if let vc = presentingViewController as? ViewController {
                vc.countNumber = self.countNumber
                vc.countNumberLbl?.text = String(self.countNumber)
                vc.dismiss(animated: true, completion: nil)
            } else if let vcA = presentingViewController as? AViewController{
                vcA.countNumber = self.countNumber
                vcA.countNumberLbl.text = String(self.countNumber)
                vcA.dismiss(animated: true, completion: nil)
            } else if let vcB = presentingViewController as? BViewController {
                vcB.countNumber = self.countNumber
                vcB.countNumberLbl?.text = String(self.countNumber)
                vcB.dismiss(animated: true, completion: nil)
            }
        }
    }
}
