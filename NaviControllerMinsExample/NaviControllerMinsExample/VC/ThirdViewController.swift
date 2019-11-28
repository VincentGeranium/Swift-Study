//
//  ThirdViewController.swift
//  NaviControllerMinsExample
//
//  Created by 김광준 on 2019/11/28.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    private let thridView: ThirdView = {
        let thridView: ThirdView = ThirdView()
        return thridView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//        title = "ThirdViewController"
        
        addedActionTarget()
    }
    
    override func loadView() {
           super.loadView()
           view = thridView
       }
       
       private func addedActionTarget() {
           thridView.firstBtn.addTarget(self, action: #selector(didTappedFirstBtn(_:)) , for: .touchUpInside)
           
           thridView.secondBtn.addTarget(self, action: #selector(didTappedSecondBtn(_:)), for: .touchUpInside)
       }
       
       @objc private func didTappedFirstBtn(_ sender: UIButton) {
           print("pushViewControlller -> firstView")
           let firstVC = FirstViewController()
           navigationController?.pushViewController(firstVC, animated: true)
       }
       
       @objc private func didTappedSecondBtn(_ sender: UIButton) {
           print("popViewController")
           navigationController?.popViewController(animated: true)
       }
    



}
