//
//  ViewController.swift
//  NaviControllerMinsExample
//
//  Created by 김광준 on 2019/11/28.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    private let firstView: FirstView = {
        let firstView: FirstView = FirstView()
        return firstView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        title = "FirstViewController"
        
        addedActionTarget()
    }
    
    override func loadView() {
        super.loadView()
        view = firstView
    }
    
    private func addedActionTarget() {
        firstView.firstBtn.addTarget(self, action: #selector(didTappedFirstBtn(_:)), for: .touchUpInside)
        firstView.secondBtn.addTarget(self, action: #selector(didTappedSecondBtn(_:)), for: .touchUpInside)
    }
    
    @objc private func didTappedFirstBtn(_ sender: UIButton) {
        print("pushViewControlller -> secondView")
        let secondVC = SecondViewController()
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    @objc private func didTappedSecondBtn(_ sender: UIButton) {
        print("pushViewController -> thirdView")
        let thirdVC = ThirdViewController()
        navigationController?.pushViewController(thirdVC, animated: true)
    }
    
    
    
    
}

