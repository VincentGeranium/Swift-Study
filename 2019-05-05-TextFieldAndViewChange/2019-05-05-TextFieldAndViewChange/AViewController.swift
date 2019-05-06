//
//  AViewController.swift
//  2019-05-05-TextFieldAndViewChange
//
//  Created by 김광준 on 05/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit
class AViewController: UIViewController {
    
    let countNumberLbl = UILabel()
    let presentVClbl = UILabel()
    let dismissBtn = UIButton()
    let goToBViewBtn = UIButton()
    var countNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.countNumber += 1
        
        view.backgroundColor = .yellow
        
        aboutCountLabel()
        showThisVCName()
        dismissFunction()
        goToBvcFunction()
    }
    
    func aboutCountLabel() {
        countNumberLbl.frame = CGRect(x: view.frame.width / 10,
                                  y: view.frame.height / 4,
                                  width: view.frame.width - view.frame.width / 5,
                                  height: 80)
        countNumberLbl.textColor = .black
        countNumberLbl.textAlignment = .center
        countNumberLbl.font = UIFont.systemFont(ofSize: 50)
        countNumberLbl.text = String(self.countNumber)
        view.addSubview(countNumberLbl)
        
    }
    
    func showThisVCName() {
        presentVClbl.frame = CGRect(x: view.frame.width / 10,
                                    y: view.frame.height / 5 - 50,
                                    width: view.frame.width - view.frame.width / 5,
                                    height: 80)
        presentVClbl.textColor = .black
        presentVClbl.textAlignment = .center
        presentVClbl.font = UIFont.systemFont(ofSize: 50)
        presentVClbl.text = "A View"
        view.addSubview(presentVClbl)
    }
    
    func dismissFunction() {
        dismissBtn.frame = CGRect(x: view.frame.width / 10,
                                  y: view.frame.height / 2,
                                  width: view.frame.width - view.frame.width / 5,
                                  height: 80)
        dismissBtn.setTitle("뒤로가기", for: .normal)
        dismissBtn.setTitleColor(.black, for: .normal)
        dismissBtn.titleLabel?.font = UIFont.systemFont(ofSize: 50)
        dismissBtn.addTarget(self, action: #selector(didtapBtn(_:)), for: .touchUpInside)
        dismissBtn.tag = 0
        view.addSubview(dismissBtn)
    }
    
    func goToBvcFunction() {
        goToBViewBtn.frame = CGRect(x: view.frame.width / 10,
                                    y: view.frame.height / 2 - 100,
                                    width: view.frame.width - view.frame.width / 5,
                                    height: 80)
        goToBViewBtn.setTitle("goToB", for: .normal)
        goToBViewBtn.setTitleColor(.black, for: .normal)
        goToBViewBtn.titleLabel?.font = UIFont.systemFont(ofSize: 50)
        goToBViewBtn.addTarget(self, action: #selector(didtapBtn(_:)), for: .touchUpInside)
        goToBViewBtn.tag = 1
        view.addSubview(goToBViewBtn)
    }
    
    @objc func didtapBtn(_ sender: UIButton) {
        if sender.tag == 1 {
            let bVC = BViewController()
            bVC.countNumber = self.countNumber
            present(bVC, animated: true, completion: nil)
        } else {
            if let vc = presentingViewController as? ViewController {
                vc.countNumber = self.countNumber
                vc.countNumberLbl?.text = String(self.countNumber)
                vc.dismiss(animated: true, completion: nil)
            } else if let vcA = presentingViewController as? AViewController {
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
