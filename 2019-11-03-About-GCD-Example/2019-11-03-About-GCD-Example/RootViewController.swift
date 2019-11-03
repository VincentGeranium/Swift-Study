//
//  RootViewController.swift
//  2019-11-03-About-GCD-Example
//
//  Created by 김광준 on 2019/11/03.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    let mainBtn: UIButton = UIButton()
    let mainLabel: UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addWithViewsCode()
    }
    
    private func addWithViewsCode() {
        configureBtn()
        configureMainLable()
        addMainBtn()
        addMainLable()
    }
    
    
    private func configureBtn() {
        
        mainBtn.setTitle("Fetch data from server", for: .normal)
        mainBtn.layer.borderWidth = CGFloat(2)
        mainBtn.layer.borderColor = CGColor(srgbRed: 0, green: 0, blue: 0, alpha: 0.2)
        mainBtn.setTitleColor(.black, for: .normal)
        mainBtn.addTarget(self, action: #selector(didTappedMainBtn), for: .touchUpInside)
        
    }
    
    private func addMainBtn() {
        
        self.view.addSubview(mainBtn)
        
        mainBtn.translatesAutoresizingMaskIntoConstraints = false
        
        let guide = view.safeAreaLayoutGuide
        
        let mainBtnCenterX: NSLayoutConstraint
        mainBtnCenterX = mainBtn.centerXAnchor.constraint(equalTo: guide.centerXAnchor)
        
        let mainBtnCenterY: NSLayoutConstraint
        mainBtnCenterY = mainBtn.centerYAnchor.constraint(equalTo: guide.centerYAnchor)
        
        mainBtnCenterX.isActive = true
        mainBtnCenterY.isActive = true
        
    }
    
    private func configureMainLable() {
        mainLabel.text = "Waiting for result..."
        mainLabel.layer.borderWidth = CGFloat(2)
        mainLabel.layer.borderColor = UIColor.red.cgColor
        
    }
    
    private func addMainLable() {
        
        self.view.addSubview(mainLabel)
        
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let guide = view.safeAreaLayoutGuide
        
        let mainLabelTop: NSLayoutConstraint
        mainLabelTop = mainLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 24)
        
        let mainLabelCenterX: NSLayoutConstraint
        mainLabelCenterX = mainLabel.centerXAnchor.constraint(equalTo: guide.centerXAnchor)
        
        mainLabelTop.isActive = true
        mainLabelCenterX.isActive = true
        
        
        
    }
    
    @objc private func didTappedMainBtn() {
        grapDataFromDatabase()
    }
    
    private func grapDataFromDatabase() {
//        DispatchQueue.global().async(qos: .background) {
//            print("On the background thread now...")
//            let result = 1
//            DispatchQueue.main.async {
//                print("On the main thread now...")
//                self.mainLabel.text = "Result: \(result)"
//            }
//        }
        
//        DispatchQueue.global().async(qos: .background) {
//            print("On the background thread now...")
//            let result = 1
//            let seconds: Double = 3.0
//            let dispatchTime: DispatchTime = DispatchTime.now() + seconds
//            DispatchQueue.global().asyncAfter(deadline: dispatchTime) {
//                DispatchQueue.main.async {
//                    print("On the main therad now...")
//                    self.mainLabel.text = "Result: \(result)"
//                }
//            }
//        }
        
        DispatchQueueHelper.delay(bySeconds: 3.0, dispatchLevel: .background) {
            print("On the background thread now...")
            let result = 1
            DispatchQueueHelper.delay(bySeconds: 0.0) {
                print("On the main therad now...")
                self.mainLabel.text = "Result: \(result)"
            }
        }
    }
}

